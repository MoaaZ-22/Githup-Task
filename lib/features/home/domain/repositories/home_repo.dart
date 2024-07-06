// ignore_for_file: one_member_abstracts

import 'package:dartz/dartz.dart';
import 'package:githup_app/core/errors/failures.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';

/// HomeRepo abstract class is used to define the methods that will
/// be used in the HomeRepoImpl class.
abstract class HomeRepo {
  /// getRepos method is used to get the home data from the server.
  Future<Either<Failure, List<RepoEntity>>> getRepos();

  /// get branches method is used to get the branches data from the server.
  Future<Either<Failure, List<BranchEntity>>> getBranches({
    required String repoName,
    required String owner,
  });

  /// searchRepos method is used to search the repos data from the server.
  Future<Either<Failure, List<RepoEntity>>> searchRepos({
    required String query,
    required int page,
  });
}
