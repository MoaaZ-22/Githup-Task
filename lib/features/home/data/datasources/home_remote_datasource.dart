// ignore_for_file: one_member_abstracts

import 'package:githup_app/core/api/dio_helper.dart';
import 'package:githup_app/core/api/endpoints.dart';
import 'package:githup_app/features/home/data/models/branch_model/branche_model.dart';
import 'package:githup_app/features/home/data/models/repos_model/repos_model.dart';
import 'package:githup_app/features/home/domain/entities/branch_entity.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:injectable/injectable.dart';

/// Home Remote Datasource  Abstraction class to define
/// the methods that will be implemented by
///  the Home Remote Datasource Impl class.
abstract class HomeRemoteDatasource {
  /// getRepos method is used to get the home data from the server.
  Future<List<RepoEntity>> getRepos();

  /// get branches method is used to get the branches data from the server.
  Future<List<BranchEntity>> getBranches({
    required String repoName,
    required String owner,
  });

  /// searchRepos method is used to search the repos data from the server.
  Future<List<RepoEntity>> searchRepos({
    required String query,
    required int page,
  });
}

@LazySingleton(as: HomeRemoteDatasource)

/// HomeRemoteDatasourceImpl class is used to get the home data from the server.
class HomeRemoteDatasourceImpl implements HomeRemoteDatasource {
  /// HomeRemoteDatasourceImpl constructor is used to initialize
  /// the HomeRemoteDatasourceImpl class.
  HomeRemoteDatasourceImpl();

  @override
  Future<List<RepoEntity>> getRepos() async {
    final data = await DioHelper.getData(
      url: EndPoints.repos,
      queryParameters: {
        'sort': 'date',
      },
    );

    final result = ReposModel.fromJson(data.data as List<dynamic>);

    return List<RepoEntity>.from(result.repos!);
  }

  @override
  Future<List<BranchEntity>> getBranches({
    required String repoName,
    required String owner,
  }) async {
    final data = await DioHelper.getData(
      url: EndPoints.branches(repo: repoName, owner: owner),
    );

    final result = BranchModel.fromJson(data.data as List<dynamic>);

    return List<BranchEntity>.from(result.branches!);
  }

  /// searchRepos method is used to search the repos data from the server.
  @override
  Future<List<RepoEntity>> searchRepos({
    required String query,
    required int page,
  }) async {
    final data = await DioHelper.getData(
      url: EndPoints.searchRepos(
        query: query,
      ),
      queryParameters: {
        'page': page,
        'sort': 'stars',
        'order': 'desc',
        'per_page': '20',
      },
    );

    final result = ReposModel.fromJson(data.data['items'] as List<dynamic>);

    return List<RepoEntity>.from(result.repos!);
  }
}
