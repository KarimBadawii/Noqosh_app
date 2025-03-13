import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/features/home/presentation/pages/home_page.dart';
import 'package:noqosh_app/features/setting/presentation/pages/setting_page.dart';
import 'core/widget/custom_bottom_navbar.dart';
import 'features/translate/presentation/pages/translate_page.dart';
import 'features/trips/presentation/pages/trips_page.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;
  late String iconPath;

  List<Widget> screens = [
     HomeScreen(),
    const TranslateScreen(),
    const TripsScreen(),
    const SettingScreen(),
  ];

  Widget _buildBottomNavigationBar() {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(40),
      elevation: 0,
      child: Container(
        width: 280.w,
        height: 55.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 10,
              spreadRadius: 5,
            ),
          ],
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          CustomBottomNavBarItem(
            iconPath: SvgAssets.home,
            currentIndex: _currentIndex,
            index: 0,
            onPressed: changeSelectionIndex,
          ),
          CustomBottomNavBarItem(
            iconPath: SvgAssets.translate,
            currentIndex: _currentIndex,
            index: 1,
            onPressed: changeSelectionIndex,
          ),
          CustomBottomNavBarItem(
            iconPath: SvgAssets.trips,
            currentIndex: _currentIndex,
            index: 2,
            onPressed: changeSelectionIndex,
          ),
          CustomBottomNavBarItem(
            iconPath: SvgAssets.settings,
            currentIndex: _currentIndex,
            index: 3,
            onPressed: changeSelectionIndex,
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            screens[_currentIndex],
            // Positioned.fill(
            //     child: Container(
            //   color: Colors.white,
            // )),

            Positioned(
                bottom: 18.h,
                left: 47.w,
                // right: 20.h,
                child: _buildBottomNavigationBar())
          ],
        ),
      ),
    );
  }

  changeSelectionIndex(int selectedIndex) {
    setState(() {
      _currentIndex = selectedIndex;
    });
  }
}
