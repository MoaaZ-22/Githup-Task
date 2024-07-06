import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/widgets/custom_error_widget.dart';
import 'package:githup_app/features/home/presentation/controllers/home_cubit/home_cubit.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/custom_divider.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/repos_list_view_item.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/repos_shimmer_list.dart';

/// ReposListViewWIdget is used to manage the Repos List View
/// that is used in Main Screen
class ReposListViewWidget extends StatelessWidget {
  /// ReposListViewWIdget constructor
  const ReposListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        if (state.getReposStatus == GetReposStatus.error) {
          return CustomErrorWidget(errorMessage: state.errMessage);
        } else if (state.getReposStatus == GetReposStatus.success) {
          return ListView.separated(
            itemCount: state.repos.length,
            separatorBuilder: (context, index) {
              return const CustomDivider();
            },
            itemBuilder: (context, index) {
              return FadeInLeft(
                duration: const Duration(milliseconds: 250),
                child: ReposListViewItem(
                  repoEntity: state.repos[index],
                ),
              );
            },
          );
        } else {
          return const ReposShimmerList();
        }
      },
    );
  }
}
