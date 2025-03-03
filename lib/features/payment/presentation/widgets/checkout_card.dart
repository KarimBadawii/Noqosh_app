import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_manager.dart';

class CheckOutCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String? param1;
  final String? param2;
  final String? param3;
  final String? param4;

  const CheckOutCard(
      {super.key,
        required this.title,
        required this.icon,
        this.param1,
        this.param2,
        this.param3,
        this.param4,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 123.h,
      decoration: BoxDecoration(
          color: ColorManager.white,
          boxShadow: [BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),]
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  children: [
                    Icon(icon,size: 28.w,color: ColorManager.black,),
                    SizedBox(width: 8.w,),
                    Text(title,style: TextStyle(color: ColorManager.black,fontSize: 20.sp),),
                    const Spacer(),
                    InkWell(
                      child: Container(
                          width: 40.w,
                          height: 40.h,
                          decoration: BoxDecoration(

                            border: Border.all(color: ColorManager.lightGrey,width: 1),
                            borderRadius: BorderRadius.circular(15.r,),
                          ),
                          child: Icon(Icons.edit,size: 28.w,color: ColorManager.black,)),
                      onTap: () {},
                    ),
                  ]),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  width: 250.w,
                  child: Row(
                      children: [
                        Text(param1 ?? "",style: TextStyle(color: ColorManager.grey,fontSize: 14.sp),),
                        const Spacer(),
                        Text(param2 ?? "",style: TextStyle(color: ColorManager.grey,fontSize: 14.sp),),
                      ]),
                ),
              ),
              SizedBox(height: 8.h,),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: SizedBox(
                  width: 250.w,
                  child: Row(
                      children: [
                        Text(param3 ?? "",style: TextStyle(color: ColorManager.grey,fontSize: 14.sp),),
                        const Spacer(),
                        Text(param4 ?? "",style: TextStyle(color: ColorManager.grey,fontSize: 14.sp),),
                      ]),
                ),
              ),

            ]),
      ),
    );
  }
}