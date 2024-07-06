import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/assets.dart';
import 'package:githup_app/core/widgets/custom_error_widget.dart';
import 'package:githup_app/features/home/presentation/controllers/details_cubit/details_cubit.dart';
import 'package:githup_app/features/home/presentation/pages/details_screen/widgets/branch_list_view.dart';
import 'package:githup_app/features/home/presentation/widgets/background_image.dart';
import 'package:lottie/lottie.dart';

///  DetailsScreenBody is a StatelessWidget that represents
/// the body of the details screen
class DetailsScreenBody extends StatelessWidget {
  /// DetailsScreenBody constructor
  const DetailsScreenBody({
    required this.defaultBranch,
    super.key,
  });

  /// isDefault is used to check if the branch is default
  final String defaultBranch;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const BackgroundImage(),
        BlocBuilder<DetailsCubit, DetailsState>(
          builder: (context, state) {
            if (state.getBranchesStatus == GetReposStatus.loading) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 25.h,
                ),
                child: Lottie.asset(
                  alignment: Alignment.center,
                  Assets.genLottieLoading,
                  width: 100.fw,
                  height: 100.fh,
                ),
              );
            } else if (state.getBranchesStatus == GetReposStatus.error) {
              return CustomErrorWidget(errorMessage: state.errMessage);
            } else {
              if (state.branches.isEmpty) {
                return const Center(
                  child: Text('No branches found'),
                );
              } else {
                return BranchListView(
                  defaultBranch: defaultBranch,
                  state: state,
                );
              }
            }
          },
        ),
      ],
    );
  }
}
