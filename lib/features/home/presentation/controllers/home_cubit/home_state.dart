part of 'home_cubit.dart';

/// HomeInitial is used to manage the state of the HomeCubit
class HomeState {
  /// Home constructor
  const HomeState({
    this.getReposStatus = GetReposStatus.loading,
    this.errMessage = '',
    this.repos = const [],
  });

  /// getReposStatus is used to show the status of getRepos
  final GetReposStatus getReposStatus;

  /// errorMessage is used to show the error message
  final String errMessage;

  /// list of repos entities
  final List<RepoEntity> repos;

  /// copyWith is used to copy the HomeState with new values
  HomeState copyWith({
    GetReposStatus? getReposStatus,
    String? errMessage,
    List<RepoEntity>? repos,
  }) {
    return HomeState(
      getReposStatus: getReposStatus ?? this.getReposStatus,
      errMessage: errMessage ?? this.errMessage,
      repos: repos ?? this.repos,
    );
  }
}

/// status of getRepos
enum GetReposStatus {
  /// [loading] is used to show the loading status
  loading,

  /// [success] is used to show the success status
  success,

  /// [error] is used to show the error status
  error,
}
