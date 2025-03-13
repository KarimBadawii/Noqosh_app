import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/values_manager.dart';

class notificationWidget extends StatelessWidget {
  const notificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50.h,
      width: 50.w,
      decoration: BoxDecoration(
          color: ColorManager.grey2.withOpacity(.5),
          border: Border.all(color: ColorManager.white),
          borderRadius: BorderRadiusDirectional.circular(12.r)
      ),
      child: Icon(
        Icons.notifications_none_rounded,
        color: ColorManager.black,
        size: AppSize.s40,
      ),
    );
  }
}