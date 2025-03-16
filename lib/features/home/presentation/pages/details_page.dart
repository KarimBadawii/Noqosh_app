import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/features/home/presentation/widgets/details_attribute.dart';
import 'package:noqosh_app/features/home/presentation/widgets/details_preview.dart';
import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/styles_manager.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // details
          SingleChildScrollView(
            child: Stack(
              children: [
                // image
                Container(
                    width: double.infinity,
                    height: 450.h,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ImageAssets.detailsBg),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter))),
                // details
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 450),
                  child: Container(
                    width: double.infinity,
                    height: 500.h,
                    decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        // details Attributes
                        SizedBox(
                          width: 366.w,
                          height: 50.h,
                          child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              DetailsAttribute(
                                icon: Icons.wifi,
                                text: "Free Wifi",
                              ),
                              DetailsAttribute(
                                icon: Icons.free_breakfast_outlined,
                                text: "Breakfast",
                              ),
                              DetailsAttribute(
                                icon: Icons.star,
                                text: "5.0",
                                color: Colors.amber,
                              ),
                              DetailsAttribute(
                                icon: Icons.star,
                                text: "5.0",
                                color: Colors.amber,
                              ),
                              // long text make overflowed error !!!!!!!!!
                              // DetailsAttribute(
                              //   icon: Icons.sports_gymnastics,
                              //   text: "Fitness center",
                              // ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1.h,
                          color: ColorManager.containerGray,
                        ),
                        // Title& price & location
                        Padding(
                          padding:  EdgeInsets.only(
                              left: 24.0.w,
                              right: 24.0.w,
                              top: 24.0.h,
                          ),
                          child: SizedBox(
                            width: 350.w,
                            height: 70.h,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("The aston villa hotel",
                                        style: getMediumStyle(
                                          color: Colors.black,
                                        )),
                                    const Spacer(),
                                    Text("\$200.7",
                                        style: getMediumStyle(
                                          color: Colors.blueAccent,
                                        )),
                                    Text("/night",
                                        style: getMediumStyle(
                                          color: ColorManager.grey,
                                        )),
                                  ],
                                ),
                                SizedBox(height: 16.h,),
                                Row(
                                  children: [
                                    const Icon(Icons.place_outlined,color: Colors.blueAccent,),
                                    SizedBox(width: 4.w,),
                                    Text("Alice Springs NT 0870, Australia",
                                        style: getRegularStyle(
                                          color: Colors.grey,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Description
                        Padding(
                          padding:  EdgeInsets.only(
                              left: 24.0.w,
                              right: 24.0.w,
                              top: 24.0.h,
                          ),
                          child: SizedBox(
                            width: 350.w,
                            height: 100.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Description",
                                    style: getMediumStyle(
                                      color: Colors.black,
                                    )),
                                SizedBox(height: 16.h,),
                                Text("DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription",
                                    style: getRegularStyle(
                                      color: Colors.grey,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      //   preview
                        Padding(
                          padding:  EdgeInsets.only(
                            left: 24.0.w,
                            right: 24.0.w,
                            top: 24.0.h,
                          ),
                          child: SizedBox(
                            width: 350.w,
                            height: 200.h,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Preview",
                                    style: getMediumStyle(
                                      color: Colors.black,
                                    )),
                                SizedBox(height: 16.h,),
                                SizedBox(
                                  width: 350.w,
                                  height: 100.h,
                                  child: ListView(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    children: const [
                                      DetailsPreview(image: ImageAssets.detailsPreview1,),
                                      DetailsPreview(image: ImageAssets.detailsPreview2,),
                                      DetailsPreview(image: ImageAssets.detailsPreview3,),

                                      // long text make overflowed error !!!!!!!!!
                                      // DetailsAttribute(
                                      //   icon: Icons.sports_gymnastics,
                                      //   text: "Fitness center",
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],),),
          //top bottoms & title
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: SizedBox(
                width: double.infinity,
                height: 60.h,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_ios),
                      const Spacer(),
                      Text("Details",
                          style: getMediumStyle(
                            color: Colors.black,
                          )),
                      const Spacer(),
                      const Icon(
                        Icons.more_horiz_rounded,
                        size: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // book now button
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: SizedBox(
                width: double.infinity,
                height: 60.h,
                child: Padding(
                  padding: const EdgeInsets.all(AppPadding.p8),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: ColorManager.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Book Now",
                      style: getMediumStyle(color: ColorManager.white),
                    ),
                  )
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
