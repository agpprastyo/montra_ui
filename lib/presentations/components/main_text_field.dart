import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// The type of text field, determines its appearance and behavior.
enum TextFieldType {
  /// Text field with a suffix icon for password visibility.
  suffix,

  /// Text field without a suffix icon.
  noSuffix,
}

/// A customizable text field used in the main UI.
///
/// The [MainTextField] widget allows customization of its appearance and behavior
/// based on the specified [type]. It supports two types: [suffix] and [noSuffix].
class MainTextField extends StatefulWidget {
  /// The type of the text field, determines its appearance and behavior.
  final TextFieldType type;

  /// The hint text displayed when the text field is empty.
  final String? hintText;

  /// The suffix text displayed when [type] is [suffix].
  final String? suffixText;

  /// The focus node for managing the focus of the text field.
  final FocusNode? focusNode;

  /// The type of keyboard to display for the text field.
  final TextInputType? keyboardType;

  /// The action to take when the user submits the text field.
  final TextInputAction? textInputAction;

  /// Creates a [MainTextField] instance.
  ///
  /// The [type] parameter is required, and [hintText], [suffixText], [focusNode],
  /// [keyboardType], and [textInputAction] are optional.
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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 55.h,
      child: TextField(
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType,
        focusNode: widget.focusNode,
        obscureText: obscureText,
        onChanged: (value) {
          // Show the suffix icon when the text field is not empty
          setState(() {
            obscureText = value.isNotEmpty;
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            // Hide the border when the text field is focused
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
