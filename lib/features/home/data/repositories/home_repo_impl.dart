// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:githup_app/core/errors/failures.dart';
import 'package:githup_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/domain/repositories/home_repo.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomeRepo)

/// HomeRepo abstract class is used to define the methods that will
///  be used in the HomeRepoImpl class.
class HomeRepoImpl implements HomeRepo {
  /// HomeRepoImpl constructor is used to initialize the HomeRepoImpl class.
  /// The constructor takes HomeRemoteDatasource as a required parameter.
  HomeRepoImpl({required this.homeRemoteDatasource});

  /// homeRemoteDatasource is an object of HomeRemoteDatasource class.
  final HomeRemoteDatasource homeRemoteDatasource;

  @override
  Future<Either<Failure, List<RepoEntity>>> getRepos() async {
    try {
      final reposEntityList = await homeRemoteDatasource.getRepos();
      return Right(reposEntityList);
    } catch (e) {
      return Left(GithupFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BranchEntity>>> getBranches({
    required String repoName,
    required String owner,
  }) async {
    try {
      final branchesEntityList = await homeRemoteDatasource.getBranches(
        repoName: repoName,
        owner: owner,
      );
      return Right(branchesEntityList);
    } catch (e) {
      return Left(GithupFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<RepoEntity>>> searchRepos({
    required String query,
    required int page,
  }) async {
    try {
      final reposEntityList =
          await homeRemoteDatasource.searchRepos(query: query, page: page);
      return Right(reposEntityList);
    } catch (e) {
      return Left(GithupFailure(e.toString()));
    }
  }
}
