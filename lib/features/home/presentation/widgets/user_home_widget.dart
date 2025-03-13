import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/styles_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';

class UserHomeWidget extends StatelessWidget {
  const UserHomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
         padding:  const EdgeInsets.all(AppPadding.p2),
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
              color: ColorManager.secondary,
            shape: BoxShape.circle
          ),
          child: ImageIcon(AssetImage(IconsAssets.icProfile)),
        ),
         // Image(image: AssetImage(IconsAssets.icProfile),),
        SizedBox(
          width: 10.w,
        ),
        Column(children: [
          Text("Hello , User",style: getMediumStyle(color: ColorManager.white),),
          Text("Good Morning!",style: getRegularStyle(color: ColorManager.lightGrey)),
        ],)
      ],
    );
  }
}
