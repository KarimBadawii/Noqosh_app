import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslateScreen extends StatelessWidget {
  const TranslateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.cyanAccent,
    );
  }
}

//import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:noqosh_app/core/utils/color_manager.dart';
// import 'package:noqosh_app/features/home/presentation/pages/home_page.dart';
// import 'package:noqosh_app/features/setting/presentation/pages/setting_page.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'features/translate/presentation/pages/translate_page.dart';
// import 'features/trips/presentation/pages/trips_page.dart';
//
// class MainLayout extends StatefulWidget {
//   const MainLayout({super.key});
//
//   @override
//   State<MainLayout> createState() => _MainLayoutState();
//
// }
//
// class _MainLayoutState extends State<MainLayout> {
//   int currentIndex = 0;
//   List<Widget> screens = [
//      HomeScreen(),
//     const TranslateScreen(),
//     const TripsScreen(),
//     const SettingScreen(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[currentIndex],
//       bottomNavigationBar: ClipRRect(
//         borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
//         child: SizedBox(
//             width: 100.w,
//             height: 75.h,
//             child: BottomNavigationBar(
//               currentIndex: currentIndex,
//               onTap: (value) => changeSelectionIndex(value),
//               backgroundColor: ColorManager.white,
//               type: BottomNavigationBarType.fixed,
//               selectedItemColor: ColorManager.white,
//               unselectedItemColor: ColorManager.white,
//               showSelectedLabels: false,
//               showUnselectedLabels: false,
//               items: [
//                 CustomBottomNavBarItem("assets/svg_images/material-symbols_home-rounded.svg", "Home"),
//                 CustomBottomNavBarItem("assets/svg_images/hugeicons--translate.svg", "Translate"),
//                 CustomBottomNavBarItem("assets/svg_images/trip_svg_icon.svg", "Trips"),
//                 CustomBottomNavBarItem("assets/svg_images/solar_settings-bold.svg", "Settings"),
//               ],
//             )),
//       ),
//     );
//   }
//
//   changeSelectionIndex(int selectedIndex) {
//     setState(() {
//       currentIndex = selectedIndex ;
//     });
//   }
//
// }
//
// class CustomBottomNavBarItem extends BottomNavigationBarItem{
//   String iconPath;
//   String title;
//
//   CustomBottomNavBarItem(this.iconPath, this.title)
//       :super(
//     label: title,
//     icon: SvgPicture.asset(iconPath,color:ColorManager.containerGray ,height: 25.h,width: 25.w,),
//       // color: ColorManager.containerGray,),
//     activeIcon: Container(
//       width: 40.w,
//       height: 40.h,
//       decoration: BoxDecoration(
//         color: ColorManager.primary,
//         borderRadius: BorderRadius.circular(15),
//       ),
//
//       child: SvgPicture.asset(iconPath, color: ColorManager.white,height: 25.h,width: 25.w,),
//       // ImageIcon(AssetImage(iconPath),color: ColorManager.white,),
//     )
//   );
//
// }