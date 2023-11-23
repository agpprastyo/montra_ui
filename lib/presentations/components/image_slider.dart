import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:montra_ui/presentations/bloc/image_slider/image_slider_cubit.dart';
import 'package:montra_ui/presentations/styles/app_text_styles.dart';

class ImageSlider extends StatelessWidget {
  final List<String> imagePaths;
  final List<String> title;
  final List<String> description;
  final ImageSliderCubit cubit;

  const ImageSlider(
      {super.key,
      required this.imagePaths,
      required this.title,
      required this.cubit,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imagePaths
              .asMap()
              .entries
              .map(
                (entry) => Builder(
                  builder: (context) {
                    return Column(
                      children: [
                        SvgPicture.asset(
                          entry.value,
                          height: 312.h,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              title[entry.key],
                              textAlign: TextAlign.center,
                              style: const AppTextStyles().titleTitle1.copyWith(
                                    color: Colors.black,
                                  ),
                            ),
                            SizedBox(height: 20.h),
                            Text(
                              description[entry.key],
                              style: const AppTextStyles()
                                  .bodyBody1
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 450.h,
            enableInfiniteScroll: true,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              cubit.updateImageIndex(index);
            },
          ),
        ),
        DotsIndicator(
          dotsCount: imagePaths.length,
          position: cubit.state,
          decorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
      ],
    );
  }
}