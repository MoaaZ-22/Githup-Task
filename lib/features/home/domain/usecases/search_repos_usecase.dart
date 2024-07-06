import 'package:dartz/dartz.dart';
import 'package:githup_app/core/base_usecase.dart';
import 'package:githup_app/core/errors/failures.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

/// This use case is used to get search the repos
@lazySingleton
class SearchReposUsecase
    implements BaseUseCase<List<RepoEntity>, SearchReposParams> {
  /// The constructor takes the discover repo as a parameter
  SearchReposUsecase({required this.homeRepo});

  /// The orders repo is used to get the candidate
  HomeRepo homeRepo;

  @override
  Future<Either<Failure, List<RepoEntity>>> call(
    SearchReposParams params,
  ) async {
    return homeRepo.searchRepos(
      query: params.query,
      page: params.page,
    );
  }
}

/// This use case is used to get search the repos
class SearchReposParams
{

  /// The constructor takes the discover repo as a parameter
  SearchReposParams({required this.query, required this.page});

  /// The orders repo is used to get the candidate
  final String query;

  /// page is used to get the page
  final int page;
}
