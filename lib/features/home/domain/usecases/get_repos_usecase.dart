import 'package:dartz/dartz.dart';
import 'package:githup_app/core/base_usecase.dart';
import 'package:githup_app/core/errors/failures.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

/// This use case is used to get the orders of the current user
@lazySingleton
class GetReposUsecase implements BaseUseCase<List<RepoEntity>, NoParameters> {
  /// The constructor takes the discover repo as a parameter
  GetReposUsecase({required this.homeRepo});

  /// The orders repo is used to get the candidate
  HomeRepo homeRepo;

  @override
  Future<Either<Failure, List<RepoEntity>>> call(
    NoParameters noParameters,
  ) async {
    return homeRepo.getRepos();
  }
}
