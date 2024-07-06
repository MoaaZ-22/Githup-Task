import 'package:flutter/material.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/assets.dart';

/// ErrorWidget is used to manage the error widget
/// that is shown when an error occurs
class CustomErrorWidget extends StatelessWidget {
  /// ErrorWidget constructor
  const CustomErrorWidget({
    required this.errorMessage,
    super.key,
  });

  /// Error message
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Image.asset(
          Assets.genImagesError,
          width: 300.fw,
          height: 300.fh,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            errorMessage,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
