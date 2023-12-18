import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:montra_ui/presentations/styles/app_color.dart';

class MyTabs extends StatefulWidget {
  final PageController pageController;

  const MyTabs({super.key, required this.pageController});

  @override
  MyTabsState createState() => MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = 1; // Set initial index to match the PageView

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this, initialIndex: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            setState(() {
              selectedIndex = index;
              widget.pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            });
          },
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          indicatorPadding: EdgeInsets.zero,
          labelPadding: EdgeInsets.symmetric(horizontal: 8.h),
          controller: _tabController,
          dividerHeight: 0,
          indicatorColor: Colors.white,
          splashBorderRadius: BorderRadius.circular(16.r),
          labelColor: AppColors.yellowYellow100,
          unselectedLabelColor: Colors.grey,
          splashFactory: NoSplash.splashFactory,
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              return states.contains(MaterialState.focused)
                  ? null
                  : Colors.transparent;
            },
          ),
          tabs: tabsItem(),
        ),
      ],
    );
  }

  List<Widget> tabsItem() {
    return [
      Tab(
        key: const Key('today'),
        child: buildTabContainer("Today",
            selectedIndex == 0 ? AppColors.yellowYellow20 : Colors.white),
      ),
      Tab(
        key: const Key('week'),
        child: buildTabContainer("Week",
            selectedIndex == 1 ? AppColors.yellowYellow20 : Colors.white),
      ),
      Tab(
        key: const Key('month'),
        child: buildTabContainer("Month",
            selectedIndex == 2 ? AppColors.yellowYellow20 : Colors.white),
      ),
      Tab(
        key: const Key('year'),
        child: buildTabContainer("Year",
            selectedIndex == 3 ? AppColors.yellowYellow20 : Colors.white),
      ),
    ];
  }

  Container buildTabContainer(String text, Color color) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(child: Text(text)),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
