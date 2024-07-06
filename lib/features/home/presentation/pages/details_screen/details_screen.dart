import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/injection_container.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/core/utils/assets.dart';
import 'package:githup_app/core/widgets/custom_app_bar_widget.dart';
import 'package:githup_app/features/home/domain/usecases/get_branches_usecase.dart';
import 'package:githup_app/features/home/presentation/controllers/details_cubit/details_cubit.dart';
import 'package:githup_app/features/home/presentation/pages/details_screen/widgets/details_screen_body.dart';
import 'package:githup_app/generated/l10n.dart';

@RoutePage()

/// DetailsScreen is used to manage the Main Screen
class DetailsScreen extends StatelessWidget {
  /// DetailsScreen constructor
  const DetailsScreen({
    @PathParam('owner') required this.owner,
    @PathParam('repoName') required this.repoName,
    @PathParam('defaultBranch') required this.defaultBranch,
    super.key,
  });

  /// owner is used to get the owner of the repo
  final String owner;

  /// repoName is used to get the repo name
  final String repoName;

  /// defaultBranch is used to get the default branch
  final String defaultBranch;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsCubit(
        getBranchesUsecase: getIt<GetBranchesUsecase>(),
      )..getBranches(repoName: repoName, owner: owner),
      child: Scaffold(
        appBar: CustomAppBar(
          leadingIcon: Assets.genIconsBackArrow,
          leadingOnPressed: () {
            Navigator.pop(context);
          },
          backgroundColor: AppColors.white50,
          appBarHeight: 42,
          titleText: S.of(context).branches,
        ),
        body: DetailsScreenBody(
          defaultBranch: defaultBranch,
        ),
      ),
    );
  }
}
