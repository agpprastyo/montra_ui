import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/screens/auth/verification/components/counter_widget.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: const Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Verification',
          style: const AppTextStyles()
              .titleTitle3
              .copyWith(color: AppColors.baseDarkDark50),
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: constraints.maxWidth,
                  minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 56.h),
                  child: Column(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 100.h),
                            Text(
                              'Enter your Verification Code',
                              style: const AppTextStyles()
                                  .titleTitle1
                                  .copyWith(color: AppColors.baseDarkDark100),
                            ),
                            SizedBox(height: 55.h),
                            Center(
                              child: Pinput(
                                defaultPinTheme: defaultPinTheme,
                                focusedPinTheme: focusedPinTheme,
                                submittedPinTheme: submittedPinTheme,
                                validator: (s) {
                                  return s == '2222'
                                      ? null
                                      : 'Pin is incorrect';
                                },
                                pinputAutovalidateMode:
                                    PinputAutovalidateMode.onSubmit,
                                showCursor: true,
                                onCompleted: (pin) => print(pin),
                              ),
                            ),
                            SizedBox(height: 40.h),
                            const CounterWidget(),
                            SizedBox(height: 16.h),
                            const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'We send verification code to your\nemail ',
                                    style: TextStyle(
                                      color: Color(0xFF292B2D),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'brajaoma*****@gmail.com',
                                    style: TextStyle(
                                      color: Color(0xFF7E3DFF),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '. You can\ncheck your inbox.',
                                    style: TextStyle(
                                      color: Color(0xFF212224),
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.h),
                            const Text(
                              'I didn’t received the code? Send again',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF7E3DFF),
                                fontSize: 16,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const MainButton(
                          type: ButtonType.primary, text: 'Verify'),
                      SizedBox(height: 20.h)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
