import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:google_fonts/google_fonts.dart';

/// AppTheme class
abstract class AppTextStyle {
  /// displayMedium
  ///  figma properties
  /// fontFamily: poppins
  /// fontSize: 20
  /// height: 150%
  /// fontWeight: w500
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle subHeading({
    required Color color,
  }) =>
      GoogleFonts.poppins(
        fontSize: 20.getResponsiveFontSize,
        height: 1.5,
        color: color,
        fontWeight: FontWeight.w500,
      );

  /// titleMedium
  /// figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 16.94px
  /// fontWeight: 600
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle titleMedium({
    required Color color,
  }) =>
      GoogleFonts.inter(
        fontSize: 14.getResponsiveFontSize,
        height: 1.5,
        color: color,
        fontWeight: FontWeight.w600,
      );

  /// subTitleMedium
  /// figma properties
  /// fontFamily: Inter
  /// fontSize: 14px
  /// height: 16.94px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle subTitleMedium({
    required Color color,
  }) =>
      GoogleFonts.inter(
        fontSize: 14.getResponsiveFontSize,
        height: 1.5,
        color: color,
        fontWeight: FontWeight.w400,
      );

  /// subTitleMedium
  /// figma properties
  /// fontFamily: Inter
  /// fontSize: 12px
  /// height: 14.52px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle label1Regular({
    required Color color,
  }) =>
      GoogleFonts.inter(
        fontSize: 12.getResponsiveFontSize,
        height: 1.5,
        color: color,
        fontWeight: FontWeight.w400,
      );

  /// descriptionRegular
  /// figma properties
  /// fontFamily: Inter
  /// fontSize: 10px
  /// height: 12.1px
  /// fontWeight: 400
  /// letterSpacing: none
  /// fontStyle: none
  /// decoration: none
  static TextStyle descriptionRegular({
    required Color color,
  }) =>
      GoogleFonts.inter(
        fontSize: 10.getResponsiveFontSize,
        height: 1.5,
        color: color,
        fontWeight: FontWeight.w400,
      );
}
