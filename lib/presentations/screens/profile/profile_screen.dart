import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/screens/profile/components/profile_picture.dart';
import 'package:montra_ui/presentations/screens/profile/components/profle_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF6F6F6),
      child: Scaffold(
          backgroundColor: const Color(0xFFF6F6F6),
          body: SafeArea(
            child: Column(
              children: [
                const PictureProfile(),
                SizedBox(height: 40.h),
                const CardProfile(),
              ],
            ),
          )),
    );
  }
}
