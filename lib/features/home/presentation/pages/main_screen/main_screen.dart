import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/config/routes/app_router.gr.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/core/utils/assets.dart';
import 'package:githup_app/core/widgets/custom_app_bar_widget.dart';
import 'package:githup_app/features/home/presentation/controllers/home_cubit/home_cubit.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/main_screen_body.dart';
import 'package:githup_app/generated/l10n.dart';

@RoutePage()

/// MainScreen is used to manage the Main Screen
class MainScreen extends StatelessWidget {
  /// MainScreen constructor
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MaterialButton(
        height: 50.fh,
        minWidth: 50.fw,
        onPressed: () {
          context.read<HomeCubit>().getRepos();
        },
        color: AppColors.blue,
        shape: const CircleBorder(),
        child: const Icon(Icons.refresh, color: Colors.white),
      ),
      appBar: CustomAppBar(
        actionIcon: Assets.genIconsSearch,
        actionOnPressed: () => context.router.push(const SearchRoute()),
        backgroundColor: AppColors.white50,
        appBarHeight: 42,
        titleText: S.of(context).gitHubRepo,
      ),
      body: const MainScreenBody(),
    );
  }
}
