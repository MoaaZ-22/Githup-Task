import 'package:githup_app/core/extensions/size_helper.dart';

/// num extensions for the app.
extension NumExtensions on num {
  /// Calculates the height depending on the device's screen size
  ///
  /// Eg: 20.h -> will take 20% of the screen's height
  ///

  double get h => this * SizeHelper.constraints!.maxHeight / 100;

  /// Calculates the width depending on the device's screen size
  ///
  /// Eg: 20.w -> will take 20% of the screen's width
  double get w => this * SizeHelper.constraints!.maxWidth / 100;

  /// Calculates the sp (Scalable Pixel) depending on the device's screen size
  double get sp => this * (SizeHelper.constraints!.maxWidth / 3) / 100;

  /// Calculates the figma height depending on the device's screen size
  double get fh => (this * SizeHelper.constraints!.maxHeight) / 852;

  /// Calculates the figma width depending on the device's screen size
  double get fw => (this * SizeHelper.constraints!.maxWidth) / 393;

  /// Calculates the figma font size depending on the device's screen size
  double get getResponsiveFontSize {
    final scaleFactor = getScaleFactor;
    final responsiveFontSize = this * scaleFactor;

    final lowerLimit = this * .8;
    final upperLimit = this * 1.2;

    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

  /// Calculates the scale factor depending on the device's screen size
  double get getScaleFactor {
    if (SizeHelper.constraints!.maxWidth < 600) {
      return SizeHelper.constraints!.maxWidth / 393;
    } else if (SizeHelper.constraints!.maxWidth < 600) {
      return SizeHelper.constraints!.maxWidth / 682;
    } else {
      return SizeHelper.constraints!.maxWidth / 1183;
    }
  }
}
