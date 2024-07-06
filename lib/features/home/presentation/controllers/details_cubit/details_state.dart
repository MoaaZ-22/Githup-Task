part of 'details_cubit.dart';

/// DetailsState is used to manage the state of the DetailsCubit
class DetailsState {
  /// DetailsState constructor
  const DetailsState({
    this.getBranchesStatus = GetReposStatus.loading,
    this.errMessage = '',
    this.branches = const [],
  });

  /// getReposStatus is used to show the status of getRepos
  final GetReposStatus getBranchesStatus;

  /// errorMessage is used to show the error message
  final String errMessage;

  /// list of repos entities
  final List<BranchEntity> branches;

  /// copyWith is used to copy the DetailsState with new values
  DetailsState copyWith({
    GetReposStatus? getBranchesStatus,
    String? errMessage,
    List<BranchEntity>? branches,
  }) {
    return DetailsState(
      getBranchesStatus: getBranchesStatus ?? this.getBranchesStatus,
      errMessage: errMessage ?? this.errMessage,
      branches: branches ?? this.branches,
    );
  }
}

/// status of getBranches
enum GetReposStatus {
  /// [loading] is used to show the loading status
  loading,

  /// [success] is used to show the success status
  success,

  /// [error] is used to show the error status
  error,
}
