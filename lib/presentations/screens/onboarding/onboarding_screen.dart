import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/bloc/image_slider/image_slider_cubit.dart';
import 'package:montra_ui/presentations/components/image_slider.dart';
import 'package:montra_ui/presentations/components/main_button.dart';
import 'package:montra_ui/presentations/routes/route.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ImageCarousel(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MainButton(
                    isLoading: _isLoading,
                    type: ButtonType.primary,
                    text: 'Sign Up',
                    onPressed: () {
                      // Set isLoading to true when the button is pressed
                      setState(() {
                        _isLoading = true;
                      });

                      // Delay execution for 3 seconds
                      Future.delayed(const Duration(seconds: 3), () {
                        // Set isLoading to false after 3 seconds
                        setState(() {
                          _isLoading = false;
                        });
                        AppRoute.signUp.push(context);
                      });
                    },
                  ),
                  MainButton(
                    type: ButtonType.secondary,
                    text: "Login",
                    onPressed: () {
                      AppRoute.signIn.push(context);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imagePath = [
    'assets/illustrations/gain_total.svg',
    'assets/illustrations/know_where.svg',
    'assets/illustrations/planning.svg',
  ];

  final List<String> title = [
    'Gain total control of your money',
    'Know where your money goes',
    'Planning Ahead',
  ];
  final List<String> description = [
    'Gain total control of your money',
    'Know where your money goes',
    'Planning Ahead',
  ];

  ImageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    // create image carousel slider widget here
    return BlocProvider(
      create: (context) => ImageSliderCubit(),
      child: Center(
        child: BlocBuilder<ImageSliderCubit, int>(
          builder: (context, currentIndex) {
            return ImageSlider(
              imagePaths: imagePath,
              title: title,
              description: description,
              cubit: BlocProvider.of<ImageSliderCubit>(context),
            );
          },
        ),
      ),
    );
  }
}
