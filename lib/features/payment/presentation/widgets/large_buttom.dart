import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles_manager.dart';


class LargeButton extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  final Color? backgroundColor;
  final double? radius;
  final void Function() onTap;
  final TextStyle? textStyle;
  final bool isStadiumBorder;

  const LargeButton(
      {super.key,
        this.prefixIcon,
        this.textStyle,
        this.isStadiumBorder = true,
        this.backgroundColor,
        this.radius,
        this.suffixIcon,
        required this.label,
        required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(fixedSize: Size(330.w, 45.h),
          shape: isStadiumBorder
              ? const StadiumBorder()
              : RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.r)),
          backgroundColor: backgroundColor ?? ColorManager.primary,
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: textStyle ??
                  getSemiBoldStyle(color: ColorManager.white)
                      .copyWith(fontSize: 20.sp),
            ),
          ],
        ));
  }
}
