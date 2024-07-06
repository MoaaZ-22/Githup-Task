import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/widgets/custom_error_widget.dart';
import 'package:githup_app/features/home/presentation/controllers/search_bloc/search_bloc.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/custom_divider.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/repos_list_view_item.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/repos_shimmer_list.dart';

/// SearchListWithBuilder is used to manage the Search List With Builder
class SearchListWithBuilder extends StatelessWidget {
  /// SearchListWithBuilder constructor
  const SearchListWithBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        switch (state.searchStatus) {
          case SearchStatus.initial:
            // Display a list of shimmer loading
            //widgets while loading repos
            return const Center(
              child: Text('Search for repos'),
            );
          case SearchStatus.loading:
            // Display a list of shimmer loading
            //widgets while loading repos
            return const ReposShimmerList();
          case SearchStatus.success:
            // Display the list of repos if loading is successful
            if (state.searchRepos.isEmpty) {
              return Center(
                child: Text(state.errorMessage),
              );
              // If there are no repos, display a message
            } else {
              return ListView.separated(
                padding: const EdgeInsets.only(top: 10),
                controller: context.read<SearchBloc>().scrollController,
                shrinkWrap: true,

                itemBuilder: (context, index) {
                  // Create a list of PostListItems for each posts
                  return index >= state.searchRepos.length
                      // Display shimmer loading for additional
                      //items that are not loaded yet
                      ? const ReposShimmerListItem()
                      : ReposListViewItem(
                          repoEntity: state.searchRepos[index],
                        );
                },
                separatorBuilder: (context, index) => const CustomDivider(),
                // if list has reached max length then hide shimmer
                itemCount: state.hasReachedMax
                    ? state.searchRepos.length
                    : state.searchRepos.length + 1,
              );
            }
          case SearchStatus.error:
            return CustomErrorWidget(
              errorMessage: state.errorMessage,
            );
          // If there's an error, display an error message
        }
      },
    );
  }
}
