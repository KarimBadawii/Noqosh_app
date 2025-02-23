import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/color_manager.dart';

class CustomBottomNavBarItem extends StatelessWidget {
  final String iconPath;
  final int index;
  final int currentIndex;
  final Function(int) onPressed;

  const CustomBottomNavBarItem(
      {super.key,
      required this.iconPath,
      required this.index,
      required this.currentIndex,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed(index);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          // unselected tab
          (currentIndex != index)
              ? SvgPicture.asset(
                  iconPath,
                  color: ColorManager.containerGray,
                  height: 30.h,
                  width: 30.w,
                )
              // Icon(
              //   icon,
              //   size: 25.w,
              //   color: ColorManager.containerGray,
              // )
              : Container(),
          // selected tab
          AnimatedOpacity(
              opacity: (currentIndex == index) ? 1 : 0.02,
              duration: const Duration(milliseconds: 200),
              child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: ColorManager.primary,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SvgPicture.asset(
                      iconPath,
                      color: ColorManager.white,
                      height: 20.h,
                      width: 20.w,
                    ),
                  ))),
        ],
      ),
    );
  }
// String iconPath;
// String title;
//
// CustomBottomNavBarItem(this.iconPath, this.title)
//     :super(
//   label: title,
//   icon: SvgPicture.asset(iconPath,color:ColorManager.containerGray ,height: 25.h,width: 25.w,),
//     // color: ColorManager.containerGray,),
//   activeIcon: Container(
//     width: 40.w,
//     height: 40.h,
//     decoration: BoxDecoration(
//       color: ColorManager.primary,
//       borderRadius: BorderRadius.circular(15),
//     ),
//
//     child: SvgPicture.asset(iconPath, color: ColorManager.white,height: 25.h,width: 25.w,),
//     // ImageIcon(AssetImage(iconPath),color: ColorManager.white,),
//   )
// );
}
