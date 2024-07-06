// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/domain/usecases/search_repos_usecase.dart';

part 'search_event.dart';
part 'search_state.dart';

/// SearchBloc class is used to manage the state of the search screen.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// SearchBloc constructor is used to initialize the SearchBloc class.
  SearchBloc(
    this.searchReposUsecase,
  ) : super(const SearchState()) {
    scrollController.addListener(onScroll);
    searchController.addListener(onSearchChanged);

    on<SearchEvent>(
      (event, emit) async {
        // Check if the event is of type GetPostsEvent
        if (event is SearchReposEvent) {
          // If the current state status is loading, skip the event
          if (state.searchStatus == SearchStatus.loading) {
            if (state.hasReachedMax) return;

            // Fetch posts from the repository using the getPosts method
            final result = await searchReposUsecase.call(
              SearchReposParams(
                page: event.page!,
                query: searchController.text,
              ),
            );
            // Check if the result is a Left (error) or Right (success)
            result.fold(
              // If it's a Left (error),
              // emit an updated state with error status and error message
              (left) => emit(
                state.copyWith(
                  searchStatus: SearchStatus.error,
                  errorMessage: 'There seems to be a problem',
                ),
              ),
              // If it's a Right (success),
              //emit an updated state with success status and fetched posts
              (right) => emit(
                state.copyWith(
                  searchStatus: SearchStatus.success,
                  searchRepos: right,
                  hasReachedMax: false,
                ),
              ),
            );
          } else {
            // If the current state status is not loading, fetch more posts
            // starting from the current number of posts

            final result = await searchReposUsecase.call(
              SearchReposParams(
                page: page++,
                query: searchController.text,
              ),
            );
            // Check if the result is a Left (error) or Right (success)
            result.fold(
                // If it's a Left (error),
                // emit an updated state with error status and error message
                (left) => emit(
                      state.copyWith(
                        searchStatus: SearchStatus.error,
                        errorMessage: 'There seems to be a problem',
                      ),
                    ),
                // If it's a Right (success),
                //update the state with the newly fetched posts
                //or set hasReachedMax to true if no more posts are available
                (right) {
              if (right.isEmpty) {
                return emit(state.copyWith(hasReachedMax: true));
              } else {
                return emit(
                  state.copyWith(
                    searchStatus: SearchStatus.success,
                    searchRepos: List.of(state.searchRepos)..addAll(right),
                    hasReachedMax: false,
                  ),
                );
              }
            });
          }
        }
      },
      transformer: droppable(),
    );
  }

  /// On scroll listener
  void onScroll() {
    final maxScroll = scrollController.position.maxScrollExtent;
    final currentScroll = scrollController.offset;

    // Save the current scroll offset
    lastScrollOffset = currentScroll;

    if (currentScroll >= (maxScroll * 0.8)) {
      add(
        SearchReposEvent(
          query: searchController.text,
        ),
      );
    }
  }

  /// Method to restore the scroll position
  void restoreScrollPosition() {
    if (lastScrollOffset != null && scrollController.hasClients) {
      scrollController.animateTo(
        // Animate the scroll to the last position
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  Timer? _debounce;

  /// Method to handle search changes
  void onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(seconds: 2), () {
      if (searchController.text.isNotEmpty) {
        page = 1; // Reset the page number for a new search
        emit(
          state.copyWith(searchRepos: [], searchStatus: SearchStatus.loading),
        );
        add(
          SearchReposEvent(
            page: page,
            query: searchController.text,
          ),
        );
        restoreScrollPosition();
      }
    });
  }

  /// searchController
  final searchController = TextEditingController();

  /// [scrollController]
  ScrollController scrollController = ScrollController();

  /// Variable to store the last scroll position
  double? lastScrollOffset;

  /// Variable to store the current page number
  int page = 1;

  /// SearchBloc constructor is used to initialize the SearchBloc class.
  final SearchReposUsecase searchReposUsecase;
}
