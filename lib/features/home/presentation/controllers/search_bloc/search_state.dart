part of 'search_bloc.dart';

/// [SearchState]
class SearchState {
  /// [SearchState] constructor is used to initialize the
  const SearchState({
    this.hasReachedMax = false,
    this.errorMessage = '',
    this.searchStatus = SearchStatus.initial,
    this.searchRepos = const [],
  });

  /// [hasReachedMax]
  final bool hasReachedMax;

  /// [errorMessage]
  final String errorMessage;

  /// [searchStatus]
  final SearchStatus searchStatus;

  /// [searchRepos]
  final List<RepoEntity> searchRepos;

  /// [copyWith]
  SearchState copyWith({
    bool? hasReachedMax,
    String? errorMessage,
    SearchStatus? searchStatus,
    List<RepoEntity>? searchRepos,
  }) {
    return SearchState(
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      errorMessage: errorMessage ?? this.errorMessage,
      searchStatus: searchStatus ?? this.searchStatus,
      searchRepos: searchRepos ?? this.searchRepos,
    );
  }
}

/// [SearchStatus]
enum SearchStatus {
  /// [initial]
  initial,

  /// [loading]
  loading,

  /// [success]
  success,

  /// [error]
  error,
}

/// [DiscoverEntityStatusRow]
enum DiscoverEntityStatusRow {
  /// [change]
  change,
}
