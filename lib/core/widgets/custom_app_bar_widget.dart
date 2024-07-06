import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:githup_app/core/extensions/num_extensions.dart';
import 'package:githup_app/core/utils/app_colors.dart';

/// CustomAppBar is used to manage the Inside Screens app bar
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// CustomAppBar constructor
  const CustomAppBar({
    required this.titleText,
    super.key,
    this.appBarHeight = kToolbarHeight,
    this.actionIcon,
    this.leadingOnPressed,
    this.actionOnPressed,
    this.titleColor = AppColors.black,
    this.leadingIconColor = AppColors.black,
    this.backgroundColor,
    this.leadingIcon,
  });

  /// appBarHeight is used to manage the app bar height
  final double appBarHeight;

  /// action icon button
  final String? actionIcon;

  /// titleText
  final String titleText;

  /// titleColor
  final Color titleColor;

  /// backButtonColor
  final Color leadingIconColor;

  /// backgroundColor
  final Color? backgroundColor;

  /// onBackButtonPressed
  final void Function()? leadingOnPressed;

  /// actionOnPressed
  final VoidCallback? actionOnPressed;

  /// leading icon
  final String? leadingIcon;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: appBarHeight,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      centerTitle: true,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      leading: leadingOnPressed != null
          ? IconButton(
              onPressed: leadingOnPressed ?? () {},
              icon: SvgPicture.asset(
                leadingIcon!,
                height: 24.fh,
                width: 24.fw,
                colorFilter: ColorFilter.mode(
                  leadingIconColor,
                  BlendMode.srcIn,
                ),
              ),
            )
          : null,
      title: Text(
        titleText,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      backgroundColor: backgroundColor ?? Colors.transparent,
      actions: actionIcon == null
          ? []
          : [
              IconButton(
                onPressed: actionOnPressed ?? () {},
                icon: SvgPicture.asset(
                  actionIcon!,
                  height: 24.fh,
                  width: 24.fw,
                  colorFilter: const ColorFilter.mode(
                    AppColors.black,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
    );
  }
}
