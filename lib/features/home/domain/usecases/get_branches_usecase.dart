import 'package:dartz/dartz.dart';
import 'package:githup_app/core/base_usecase.dart';
import 'package:githup_app/core/errors/failures.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';
import 'package:githup_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

/// This use case is used to get the orders of the current user
@lazySingleton
class GetBranchesUsecase
    implements BaseUseCase<List<BranchEntity>, GetBranchesParams> {
  /// The constructor takes the discover repo as a parameter
  GetBranchesUsecase({required this.homeRepo});

  /// The orders repo is used to get the candidate
  HomeRepo homeRepo;

  @override
  Future<Either<Failure, List<BranchEntity>>> call(
    GetBranchesParams parameters,
  ) async {
    return homeRepo.getBranches(
      repoName: parameters.repoName,
      owner: parameters.owner,
    );
  }
}

/// class for passing parameters to the use case
class GetBranchesParams {
  /// constructor for passing parameters to the use case
  GetBranchesParams({required this.repoName, required this.owner});

  /// repoName is the name of the repository
  final String repoName;

  /// owner is the owner of the repository
  final String owner;
}
