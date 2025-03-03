import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/color_manager.dart';

class DetailsAttribute extends StatelessWidget {
  DetailsAttribute(
      {required this.text, required this.icon, this.color, super.key});

  String text;
  IconData icon;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90.w,
        height: 35.h,
        decoration: BoxDecoration(
          color: ColorManager.containerGray,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            const Spacer(),
            Icon(icon, color: color),
            // const Spacer(),
            const SizedBox(
              width: 5,
            ),

            Text(text),
            const Spacer(),
          ]),
        ),
      ),
    );
  }
}
