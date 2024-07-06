// ignore_for_file: public_member_api_docs

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

/// this class is the image widget
class CustomCachedImage extends StatelessWidget {
  /// constructor
  const CustomCachedImage({
    required this.image,
    super.key,
    this.borderRadius = BorderRadius.zero,
    this.boxFit = BoxFit.cover,
    this.width,
    this.height,
    this.errorWidgetIconScale,
  });
  final String image;
  final BorderRadiusGeometry borderRadius;
  final BoxFit boxFit;
  final double? width;
  final double? height;
  final double? errorWidgetIconScale;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: CachedNetworkImage(
        height: height ?? 100.w,
        width: width ?? 100.w,
        filterQuality: FilterQuality.high,
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        imageUrl: image,
        fit: boxFit,
        errorWidget: (context, error, stackTrace) {
          return Container(
            height: height ?? 100.w,
            width: width ?? 100.w,
            decoration: BoxDecoration(
              borderRadius: borderRadius,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.error,
            ),
          );
        },
      ),
    );
  }
}
