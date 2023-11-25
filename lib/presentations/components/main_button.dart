import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

/// The type of button, determines its appearance and behavior.
enum ButtonType {
  /// Primary button with a solid background color.
  primary,

  /// Secondary button with a lighter background color.
  secondary,

  /// Tertiary button with a white background, an icon, and text.
  tertiary,
}

/// A customizable button used in the main UI.
///
/// The [MainButton] widget allows customization of its appearance and behavior
/// based on the specified [type]. It supports three types: [primary],
/// [secondary], and [tertiary].
class MainButton extends StatefulWidget {
  /// The type of the button, determines its appearance and behavior.
  final ButtonType type;

  /// The text displayed on the button.
  final String text;

  /// Indicates whether the button is in a loading state.
  final bool isLoading;

  /// The function called when the button is pressed.
  final Function()? onPressed;

  /// Creates a [MainButton] instance.
  ///
  /// The [type], [isLoading], [text], and [onPressed] parameters are required.
  const MainButton({
    Key? key,
    required this.type,
    this.isLoading = false,
    required this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    final text = widget.text;
    Color buttonColor;
    String buttonText;
    Color circularColor = Colors.white;
    Widget? child;

    // Set the button color and text based on the button type
    switch (widget.type) {
      case ButtonType.primary:
        buttonColor = AppColors.violetViolet100;
        buttonText = text;
        break;
      case ButtonType.secondary:
        buttonColor = AppColors.violetViolet20;
        buttonText = text;
        circularColor = AppColors.violetViolet100;
        break;
      case ButtonType.tertiary:
        buttonColor = Colors.white;
        buttonText = text;
        circularColor = AppColors.violetViolet100;
        child = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/flat-color-icons:google.svg',
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(width: 8.w),
            Text(
              buttonText,
              style: const AppTextStyles()
                  .titleTitle3
                  .copyWith(color: Colors.black),
            ),
          ],
        );
        break;
    }

    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: SizedBox(
        height: 55.h,
        width: double.infinity,
        child: TextButton(
          style: TextButton.styleFrom(
            shadowColor: Colors.grey.shade200,
            elevation: 3,
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
          // Disable the button if it is in a loading state
          onPressed: widget.isLoading
              ? null
              : widget.onPressed, // Use the custom onPressed function
          // Display a loading indicator if the button is in a loading state
          child: widget.isLoading
              ? CircularProgressIndicator(
                  color: circularColor,
                )
              // Display the button text or child widget
              : child ??
                  Text(buttonText,
                      style: const AppTextStyles().titleTitle3.copyWith(
                            color: widget.type == ButtonType.primary
                                ? Colors.white
                                : AppColors.violetViolet100,
                          )),
        ),
      ),
    );
  }
}
