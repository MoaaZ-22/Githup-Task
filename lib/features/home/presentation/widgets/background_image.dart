import 'package:flutter/material.dart';
import 'package:githup_app/core/utils/assets.dart';

/// BackgroundImage is used to manage the Home Background Image
/// that is used in stack
class BackgroundImage extends StatelessWidget {
  /// BackgroundImage constructor
  const BackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.genImagesHomeBackgroundImage,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}
