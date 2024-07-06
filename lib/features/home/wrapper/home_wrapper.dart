import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/injection_container.dart';
import 'package:githup_app/features/home/domain/usecases/get_repos_usecase.dart';
import 'package:githup_app/features/home/presentation/controllers/home_cubit/home_cubit.dart';

@RoutePage()

/// HomeWrapper
class HomeWrapper extends StatelessWidget {
  /// HomeWrapper constructor
  const HomeWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        getIt<GetReposUsecase>(),
      )..getRepos(),
      child: const AutoRouter(),
    );
  }
}
