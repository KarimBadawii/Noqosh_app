import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noqosh_app/config/routes/routes.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/core/widget/custom_elevated_button.dart';
import 'package:noqosh_app/features/home/presentation/widgets/user_home_widget.dart';
import 'package:noqosh_app/features/payment/presentation/widgets/large_buttom.dart';

import '../../../../core/utils/styles_manager.dart';
import '../widgets/notification_widget.dart';
import '../widgets/search_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageAssets.home_bg),
              alignment: Alignment.topCenter)),
      child: Scaffold(
        backgroundColor: ColorManager.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p16),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UserHomeWidget(),
                    notificationWidget(),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                DefaultTabController(
                    length: 2,
                    child: TabBar(
                      onTap: (value) {
                        isSelected = value;
                        setState(() {});
                      },
                      indicator: const BoxDecoration(color: Colors.transparent),
                      labelPadding: const EdgeInsets.all(AppPadding.p8),
                      dividerColor: ColorManager.transparent,
                      tabs: [
                        Container(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          height: 50.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: isSelected == 0
                                  ? ColorManager.primary
                                  : ColorManager.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.hotel,
                                color: isSelected == 0
                                    ? ColorManager.white
                                    : ColorManager.lightGrey,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Hotel",
                                style: getRegularStyle(
                                    color: isSelected == 0
                                        ? ColorManager.white
                                        : ColorManager.lightGrey),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(AppPadding.p8),
                          height: 50.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              color: isSelected == 1
                                  ? ColorManager.primary
                                  : ColorManager.white,
                              borderRadius: BorderRadius.circular(15.r)),
                          child: Row(
                            children: [
                              Icon(
                                Icons.holiday_village,
                                color: isSelected == 1
                                    ? ColorManager.white
                                    : ColorManager.lightGrey,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Text(
                                "Trips",
                                style: getRegularStyle(
                                    color: isSelected == 1
                                        ? ColorManager.white
                                        : ColorManager.lightGrey),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 15.h,
                ),
                const SearchBarwidget(),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Exploral Egypt",
                      style: getMediumStyle(color: ColorManager.primary),
                    ),
                    SizedBox(
                      width: 140.w,
                    ),
                    Container(
                        height: 30.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: ColorManager.white),
                        child: Center(
                            child: Text(
                          "See All",
                          style: getRegularStyle(color: ColorManager.lightBlue),
                        ))),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 260.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, Routes.detailsRoute);
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15.r),
                                        topLeft: Radius.circular(15.r)),
                                    child: Container(
                                        height: 180.h,
                                        width: 260.w,
                                        child: const Image(
                                          image: AssetImage(ImageAssets.detailsBg),
                                          fit: BoxFit.fill,
                                        ))),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(AppPadding.p8),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cairo",
                                        style: getRegularStyle(
                                            color: ColorManager.black),
                                      ),
                                      Text(
                                        "600 Hotel",
                                        style: getRegularStyle(
                                            color: ColorManager.black),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Aswan",
                      style: getMediumStyle(color: ColorManager.black),
                    ),
                    SizedBox(
                      width: 217.w,
                    ),
                    Container(
                        height: 30.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: ColorManager.white),
                        child: Center(
                            child: Text(
                          "See All",
                          style: getRegularStyle(color: ColorManager.lightBlue),
                        ))),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                SizedBox(
                  height: 260.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p4),
                        child: Card(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.r),
                                      topLeft: Radius.circular(15.r)),
                                  child: Container(
                                      height: 180.h,
                                      width: 260.w,
                                      child: const Image(
                                        image: AssetImage(ImageAssets.detailsBg),
                                        fit: BoxFit.fill,
                                      ))),
                              SizedBox(
                                height: 5.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(AppPadding.p8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Cairo",
                                      style: getRegularStyle(
                                          color: ColorManager.black),
                                    ),
                                    Text(
                                      "600 Hotel",
                                      style: getRegularStyle(
                                          color: ColorManager.black),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 90.h, right: 10.w),
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: ColorManager.primary,
            onPressed: () {
              Navigator.pushNamed(context, Routes.chatBotRoute);
            },
            child:  SvgPicture(height: 70.h ,width: 50.w, const SvgAssetLoader(SvgAssets.chatBotIcon))
          ),
        ),
      ),
    );
  }
}
