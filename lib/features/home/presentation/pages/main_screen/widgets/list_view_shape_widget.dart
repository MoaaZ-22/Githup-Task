import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/features/home/presentation/pages/main_screen/widgets/repos_list_view_widget.dart';

/// ListViewShapeWidget is used to manage the shape that
/// is put list view inside it
class ListViewShapeWidget extends StatelessWidget {
  /// ListViewShapeWidget constructor
  const ListViewShapeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.fw, vertical: 14.fh)
          .copyWith(bottom: 0),
      decoration: const BoxDecoration(
        color: AppColors.white50,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12),
          topRight: Radius.circular(12),
        ),
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.white35,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: const ReposListViewWidget(),
    );
  }
}
