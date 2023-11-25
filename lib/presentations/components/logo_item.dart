import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A widget representing a logo item with an optional colored background.
///
/// This widget displays an SVG image inside a container with specified
/// background color and SVG color.
class LogoItem extends StatefulWidget {
  /// Creates a [LogoItem] widget.
  ///
  /// The [color] parameter represents the background color of the container.
  /// The [svgPath] parameter is the path to the SVG file.
  /// The [svgColor] parameter is an optional parameter for specifying the color
  /// of the SVG image. If not provided, the original colors of the SVG will be used.
  const LogoItem({
    Key? key,
    required this.color,
    required this.svgPath,
    this.svgColor,
    this.containerPadding = 8,
    this.svgSize = 32,
    this.containerSize = 60,
  }) : super(key: key);

  /// The background color of the container.
  final Color color;

  /// The path to the SVG file.
  final String svgPath;

  /// The color of the SVG image. If not provided, original colors will be used.
  final Color? svgColor;

  final int? containerPadding;
  final double? containerSize;

  final int? svgSize;

  @override
  State<LogoItem> createState() => _LogoItemState();
}

class _LogoItemState extends State<LogoItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.containerSize,
      height: widget.containerSize,
      padding: EdgeInsets.symmetric(
          horizontal: widget.containerPadding!.h,
          vertical: widget.containerPadding!.h),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: SvgPicture.asset(
        widget.svgPath,
        width: widget.svgSize!.h,
        height: widget.svgSize!.h,
        colorFilter: widget.svgColor != null
            ? ColorFilter.mode(
                widget.svgColor!,
                BlendMode.srcIn,
              )
            : null,
      ),
    );
  }
}
