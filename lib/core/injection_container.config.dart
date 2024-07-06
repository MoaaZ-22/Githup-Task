// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/data/datasources/home_remote_datasource.dart' as _i3;
import '../features/home/data/repositories/home_repo_impl.dart' as _i5;
import '../features/home/domain/repositories/home_repo.dart' as _i4;
import '../features/home/domain/usecases/get_branches_usecase.dart' as _i7;
import '../features/home/domain/usecases/get_repos_usecase.dart' as _i8;
import '../features/home/domain/usecases/search_repos_usecase.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HomeRemoteDatasource>(
        () => _i3.HomeRemoteDatasourceImpl());
    gh.lazySingleton<_i4.HomeRepo>(() =>
        _i5.HomeRepoImpl(homeRemoteDatasource: gh<_i3.HomeRemoteDatasource>()));
    gh.lazySingleton<_i6.SearchReposUsecase>(
        () => _i6.SearchReposUsecase(homeRepo: gh<_i4.HomeRepo>()));
    gh.lazySingleton<_i7.GetBranchesUsecase>(
        () => _i7.GetBranchesUsecase(homeRepo: gh<_i4.HomeRepo>()));
    gh.lazySingleton<_i8.GetReposUsecase>(
        () => _i8.GetReposUsecase(homeRepo: gh<_i4.HomeRepo>()));
    return this;
  }
}
