import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/features/home/presentation/controllers/details_cubit/details_cubit.dart';
import 'package:githup_app/features/home/presentation/pages/details_screen/widgets/branch_item.dart';

/// BranchListView is a StatelessWidget that represents
/// the list of branches
class BranchListView extends StatelessWidget {
  /// BranchListView constructor
  const BranchListView({
    required this.defaultBranch,
    required this.state,
    super.key,
  });

  /// BranchName is used to get the branch name
  final DetailsState state;

  /// isDefault is used to check if the branch is default
  final String defaultBranch;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(
        left: 8.fw,
        right: 8.fw,
        bottom: 12.fh,
      ),
      itemBuilder: (context, index) {
        return BranchItem(
          name: state.branches[index].nameE,
          defaultBranch: defaultBranch,
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 5.fh,
        );
      },
      itemCount: state.branches.length,
    );
  }
}
