import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/color_manager.dart';

class DetailsPreview extends StatelessWidget {
  const DetailsPreview({required this.image, super.key});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: 120.w,
            height: 20.h,
            decoration: BoxDecoration(
              color: ColorManager.containerGray,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(image,fit: BoxFit.fill,)
        )
    );
  }
}
