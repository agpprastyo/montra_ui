import 'package:flutter/material.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';

class TermConditions extends StatefulWidget {
  const TermConditions({
    super.key,
  });

  @override
  State<TermConditions> createState() => _TermConditionsState();
}

class _TermConditionsState extends State<TermConditions> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Checkbox(
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
      const SizedBox(width: 8),
      // Add some spacing between the checkbox and text
      Expanded(
        child: RichText(
          text: TextSpan(
            text: 'By signing up, you agree to the ',
            style: DefaultTextStyle.of(context).style,
            // Use the default text style for the first part of the text
            children: const [
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: AppColors
                      .violetViolet100, // Set the color to red for this part
                ),
              ),
              TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: AppColors
                      .violetViolet100, // Set the color to red for this part
                ),
              ),
            ],
          ),
          maxLines: 3,
        ),
      ),
    ]);
  }
}
