import 'package:flutter/material.dart';
import 'package:githup_app/core/utils/app_colors.dart';
import 'package:githup_app/core/utils/styles_helper.dart';

/// A class that provides a light theme configuration for the application.
class AppTheme {
  /// Returns a [ThemeData] object representing the light theme of the app.
  ///
  /// The `lang` argument specifies the language for which the font family
  /// should be selected.
  ///
  /// The returned theme has its various properties configured, such as
  /// text styles, colors, etc.
  static ThemeData theme() {
    return ThemeData(
      /// useMaterial3.
      useMaterial3: true,

      textTheme: TextTheme(
        /// Used for text in the app bar title in home screen
        headlineMedium: AppTextStyle.subHeading(color: AppColors.black),

        /// Used for text in the title of list view item in home
        titleMedium: AppTextStyle.titleMedium(color: AppColors.black100),

        /// Used for text in the subtitle1 in list view item in home
        bodyMedium: AppTextStyle.subTitleMedium(color: AppColors.black100),

        /// User fo the label1Regular text[Date] in list view item in home
        labelSmall: AppTextStyle.label1Regular(color: AppColors.blue),

        /// User fo the description text[Main Branch]. in list view item in home
        bodySmall: AppTextStyle.descriptionRegular(color: AppColors.black75),
      ),

      // Set the brightness level.
      brightness: Brightness.light,
    );
  }
}
