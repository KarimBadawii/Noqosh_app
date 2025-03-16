import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import '../../config/routes/routes.dart';
import '../utils/styles_manager.dart';
import '../utils/values_manager.dart';

class TitleBar extends StatelessWidget {
  final String title;
  final String newRouteName ;
   bool  isBack = true;
   bool hasSettings = true;

    TitleBar({
     required this.title,
     this.isBack = true ,
     this.hasSettings = true ,
     this.newRouteName = Routes.mainRoute, super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.p24),
      child: SizedBox(
        width: double.infinity,
        height: 50.h,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.p8),
          child: Row(
            children: [
               isBack ?  InkWell(
                onTap: (){
                  Navigator.pushNamedAndRemoveUntil(context, newRouteName, (route) => false);
                },
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorManager.containerGray,width: 2)
                  ),
                  child: Padding(
                    padding:  EdgeInsets.only( left: 8),
                    child: Icon(Icons.arrow_back_ios,size: 32,),
                  ),
                ),
              ) : SizedBox(
        width: 32.w,
        height: 32.h,
      ) ,
              const Spacer(),
              Text(title,
                  style: getSemiBoldStyle(
                    color: Colors.black,
                  )),
              const Spacer(),
              //  ...  icon
               hasSettings ?  InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  width: 30.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: ColorManager.containerGray)
                  ),
                  child: const Icon(
                    Icons.more_horiz_rounded,
                    size: 32,
                  ),
                ),
              ) : SizedBox(
                width: 32.w,
                height: 32.h,
              ) ,

            ],
          ),
        ),
      ),
    );
  }
}