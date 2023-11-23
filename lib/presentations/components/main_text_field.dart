import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum TextFieldType {
  suffix,
  noSuffix,
}

class MainTextField extends StatefulWidget {
  final TextFieldType type;
  final String? hintText;
  final String? suffixText;
  final FocusNode? focusNode;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction; // Added this line

  const MainTextField({
    Key? key,
    required this.type,
    this.hintText,
    this.suffixText,
    this.focusNode,
    this.keyboardType,
    this.textInputAction,
  }) : super(key: key);

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool obscureText = true;
  TextInputType? keyboardType;
  TextInputAction? textInputAction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 55.h,
      child: TextField(
        textInputAction: widget.textInputAction,
        // Use the custom parameter
        keyboardType: widget.keyboardType,
        focusNode: widget.focusNode,
        obscureText: obscureText,
        onChanged: (value) {
          setState(() {
            obscureText = value.isNotEmpty;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: widget.focusNode?.hasFocus ?? false
                ? BorderSide.none
                : const BorderSide(width: 0.1, color: Colors.grey),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
            fontSize: 16.sp,
          ),
          suffixIcon: widget.type == TextFieldType.suffix
              ? Padding(
                  padding: EdgeInsets.all(12.0.h),
                  child: IconButton(
                    icon: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
