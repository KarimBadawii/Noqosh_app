import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/config/routes/routes.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/features/home/presentation/widgets/user_home_widget.dart';

import '../widgets/notification_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.home_bg),
              alignment: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: ColorManager.transparent,
        body:  const Padding(
          padding: EdgeInsets.all(AppPadding.p16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   UserHomeWidget(),
                  notificationWidget(),
                ],
              ),
            ],
          ),


        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 90.h,right: 10.w),
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: ColorManager.primary,onPressed: (){
            Navigator.pushNamed(context, Routes.chatBotRoute);
          },child:  Icon(Icons.chat,color: ColorManager.black,),),
        ),
      ),
    );
  }
}


