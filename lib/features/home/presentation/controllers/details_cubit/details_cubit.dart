import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';
import 'package:githup_app/features/home/domain/usecases/get_branches_usecase.dart';

part 'details_state.dart';

/// DetailsCubit is used to manage the state of the DetailsCubit
class DetailsCubit extends Cubit<DetailsState> {
  /// DetailsCubit constructor
  DetailsCubit({
    required this.getBranchesUsecase,
  }) : super(const DetailsState());

  /// getBranchesUsecase is used to get the branches
  final GetBranchesUsecase getBranchesUsecase;

  /// getBranches is used to get the branches
  Future<void> getBranches({
    required String repoName,
    required String owner,
  }) async {
    emit(state.copyWith(getBranchesStatus: GetReposStatus.loading));

    final result = await getBranchesUsecase(
      GetBranchesParams(
        repoName: repoName,
        owner: owner,
      ),
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            getBranchesStatus: GetReposStatus.error,
            errMessage: failure.toString(),
          ),
        );
      },
      (branches) {
        emit(
          state.copyWith(
            getBranchesStatus: GetReposStatus.success,
            branches: branches,
          ),
        );
      },
    );
  }

  /// isDefault is used to check if the branch is the default branch
  bool isDefault(String branchName, String defaultBranch) {
    return branchName == defaultBranch;
  }
}
