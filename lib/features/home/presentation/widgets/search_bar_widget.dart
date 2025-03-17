import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/color_manager.dart';
import '../../../../core/utils/styles_manager.dart';
import '../../../../core/utils/values_manager.dart';

class SearchBarwidget extends StatelessWidget {
  const SearchBarwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.text,
          cursorColor: ColorManager.primary,
          style: getRegularStyle(color: ColorManager.black),
          decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: ColorManager.primary),borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),topLeft: Radius.circular(15.r)) ),
              fillColor: ColorManager.white,
              filled: true,
              prefixIcon:  Icon(Icons.search,size: AppSize.s32,color: ColorManager.black),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide( width: 2,color: ColorManager.primary),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),topLeft: Radius.circular(15.r))),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: ColorManager.primary),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(15.r),topLeft: Radius.circular(15.r))),
              hintText: "Enter a destination",hintStyle: getRegularStyle(color: ColorManager.lightGrey)),
        ),
        TextFormField(
          keyboardType: TextInputType.datetime,
          cursorColor: ColorManager.primary,
          style: getRegularStyle(color: ColorManager.black),
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorManager.primary)),
              fillColor: ColorManager.white,
              filled: true,
              prefixIcon:  Icon(Icons.date_range,size: AppSize.s32,color: ColorManager.black),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide( width: 2,color: ColorManager.primary),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.primary),
              ),
              hintText: "Mon ,17 Feb - Tue,18Feb",hintStyle: getRegularStyle(color: ColorManager.lightGrey)),
        ),
        TextFormField(
          keyboardType: TextInputType.datetime,
          cursorColor: ColorManager.primary,
          style: getRegularStyle(color: ColorManager.black),
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: ColorManager.primary)),
              fillColor: ColorManager.white,
              filled: true,
              prefixIcon:  Icon(Icons.person,size: AppSize.s32,color: ColorManager.black,),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide( width: 2,color: ColorManager.primary),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: ColorManager.primary),
              ),
              hintText: "1 room . 2 adults . No children",hintStyle: getRegularStyle(color: ColorManager.lightGrey)),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(340.w, 55.h),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.r),bottomLeft: Radius.circular(15.r))),
              backgroundColor:ColorManager.primary,
            ),
            onPressed: (){},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Search",
                  style: getSemiBoldStyle(color: ColorManager.white)
                      .copyWith(fontSize: 20.sp),
                ),
              ],
            ))
      ],
    );
  }
}
