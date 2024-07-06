import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/features/home/presentation/controllers/details_cubit/details_cubit.dart';
import 'package:githup_app/generated/l10n.dart';

/// BranchItem is a StatelessWidget that represents
/// the branch item
class BranchItem extends StatelessWidget {
  /// BranchItem constructor
  const BranchItem({
    required this.name,
    required this.defaultBranch,
    super.key,
  });

  /// state is used to get the state of the DetailsCubit
  final String name;

  /// isDefault is used to check if the branch is default
  final String defaultBranch;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      trailing: Container(
        padding: EdgeInsets.symmetric(
          horizontal:
              context.read<DetailsCubit>().isDefault(name, defaultBranch)
                  ? 8.fw
                  : 0,
        ),
        decoration: BoxDecoration(
          color: AppColors.black75.withOpacity(0.5),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          context.read<DetailsCubit>().isDefault(name, defaultBranch)
              ? S.of(context).defaultE
              : '',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
    );
  }
}
