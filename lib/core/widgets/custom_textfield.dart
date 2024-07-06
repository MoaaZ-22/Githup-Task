// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';

/// this class is the custom text field
class CustomTextField extends StatelessWidget {
  /// constructor
  const CustomTextField({
    required this.controller,
    super.key,
    this.hintText,
    this.focusNode,
    this.label,
    this.readOnly = false,
    this.useBorder = false,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.prefixWidget,
    this.suffixWidget,
    this.lines,
    this.inputFormatters,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.fillColor,
    this.style,
    this.labelTextStyle,
    this.onTapOutside,
    this.autofillHints,
    this.hintStyle,
    this.capitalizeFirstCharacter = false,
    this.contentPadding,
  });
  final TextEditingController controller;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final String? hintText;

  final String? label;
  final TextInputType? keyboardType;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool obscureText;
  final int? lines;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final bool? readOnly;
  final bool useBorder;
  final TextStyle? labelTextStyle;
  final int? maxLength;
  final Color? fillColor;
  final TextStyle? style;
  final void Function(PointerDownEvent)? onTapOutside;
  final Iterable<String>? autofillHints;
  final TextStyle? hintStyle;
  final bool? capitalizeFirstCharacter;
  final EdgeInsetsGeometry? contentPadding;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Text(
            label!,
            textAlign: TextAlign.left,
            style: labelTextStyle ??
                Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.black,
                      fontSize: 14.getResponsiveFontSize,
                    ),
          ),
        if (label != null)
          SizedBox(
            height: 10.fh,
          ),
        TextFormField(
          textCapitalization: capitalizeFirstCharacter!
              ? TextCapitalization.sentences
              : TextCapitalization.none,
          readOnly: readOnly!,
          enabled: enabled,
          autofillHints: autofillHints,
          validator: validator,
          focusNode: focusNode,
          keyboardType: keyboardType ?? TextInputType.text,
          controller: controller,
          obscureText: obscureText,
          obscuringCharacter: '*',
          onChanged: onChanged,
          maxLines: lines ?? 1,
          maxLength: maxLength,
          style: style ??
              Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.black,
                    fontSize: 14.getResponsiveFontSize,
                    fontWeight: FontWeight.w600,
                  ),
          inputFormatters: inputFormatters,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ??
                Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: AppColors.black75,
                      fontSize: 14.getResponsiveFontSize,
                      fontWeight: FontWeight.w600,
                    ),

            filled: true,
            fillColor: fillColor ?? Colors.white,
            counterStyle: const TextStyle(
              height: double.minPositive,
            ),
            // none
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.sp),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9.sp),
              borderSide: BorderSide.none,
            ),
            contentPadding: contentPadding ??
                EdgeInsets.symmetric(
                  horizontal: 4.w,
                  vertical: 1.8.h,
                ),
            counterText: '',
            errorMaxLines: 4,
            prefixIcon: prefixWidget,
            prefixIconConstraints: BoxConstraints(minWidth: 15.w),
            suffixIcon: suffixWidget,
            suffixIconConstraints: BoxConstraints(minWidth: 6.w),
          ),
        ),
      ],
    );
  }
}
