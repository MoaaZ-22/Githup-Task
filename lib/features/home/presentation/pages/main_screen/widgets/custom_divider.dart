import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';

/// CustomDivider is used to manage the custom divider
/// that is used in ReposListViewWidget
class CustomDivider extends StatelessWidget {
  /// CustomDivider constructor
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      indent: 20.fw,
      endIndent: 20.fw,
      height: 1,
      thickness: 1.5,
      color: AppColors.white35,
    );
  }
}
