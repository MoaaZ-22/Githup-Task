import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/base_usecase.dart';
import 'package:githup_app/features/home/domain/entities/repo_entity.dart';
import 'package:githup_app/features/home/domain/usecases/get_repos_usecase.dart';

part 'home_state.dart';

/// HomeCubit is used to manage the state of the HomeCubit
class HomeCubit extends Cubit<HomeState> {
  /// HomeCubit constructor
  HomeCubit(
    this.getReposUsecase,
  ) : super(const HomeState());

  /// getReposUsecase is used to get the repos
  /// from the usecase
  final GetReposUsecase getReposUsecase;

  /// getRepos is used to get the repos
  Future<void> getRepos() async {
    emit(state.copyWith(getReposStatus: GetReposStatus.loading));

    final result = await getReposUsecase(
      NoParameters(),
    );

    result.fold(
      (failure) {
        emit(state.copyWith(getReposStatus: GetReposStatus.error));
      },
      (repos) {
        emit(
          state.copyWith(
            getReposStatus: GetReposStatus.success,
            repos: repos,
          ),
        );
      },
    );
  }
}
