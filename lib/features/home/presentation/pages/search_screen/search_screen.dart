import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/injection_container.dart';
import 'package:githup_app/core/utils/assets.dart';
import 'package:githup_app/core/widgets/custom_app_bar_widget.dart';
import 'package:githup_app/features/home/domain/usecases/search_repos_usecase.dart';
import 'package:githup_app/features/home/presentation/controllers/search_bloc/search_bloc.dart';
import 'package:githup_app/features/home/presentation/pages/search_screen/widgets/search_screen_body.dart';
import 'package:githup_app/generated/l10n.dart';

@RoutePage()

/// SearchScreen is used to manage the Search Screen
class SearchScreen extends StatefulWidget {
  /// SearchScreen constructor
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        getIt<SearchReposUsecase>(),
      ),
      child: Scaffold(
        appBar: CustomAppBar(
          leadingIcon: Assets.genIconsBackArrow,
          leadingOnPressed: () {
            Navigator.of(context).pop();
          },
          titleText: S.of(context).reposSearch,
        ),
        body: const SearchScreenBody(),
      ),
    );
  }
}
