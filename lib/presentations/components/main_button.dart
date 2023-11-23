import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

enum ButtonType { primary, secondary, tertiary }

class MainButton extends StatefulWidget {
  final ButtonType type;
  final String text;
  final bool isLoading;
  final Function()? onPressed;

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
            // Replace with your desired icon
            SizedBox(width: 8.w),
            // Adjust the spacing as needed
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
          onPressed: widget.isLoading
              ? null
              : widget.onPressed, // Use the custom onPressed function
          child: widget.isLoading
              ? CircularProgressIndicator(
                  color: circularColor,
                )
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
