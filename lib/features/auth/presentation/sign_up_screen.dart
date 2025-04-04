import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/font_manager.dart';
import 'package:noqosh_app/core/utils/styles_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/core/widget/custom_elevated_button.dart';

import '../../../config/routes/routes.dart';
import '../../../core/widget/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.secondary,
          image: const DecorationImage(
              image: AssetImage(ImageAssets.authBg ,),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth
          )

      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
            top: height * .05,
            right:width * .05,
            left: width * .05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: getSemiBoldStyle(color: ColorManager.white),
              ),
              SizedBox(
                  width: width * .10,
                  child: Divider(
                    color: ColorManager.white,
                    thickness: 3.h,
                  )),
              SizedBox(
                height: height * .01,
              ),
              CustomTextField(
                hint: "Full Name",
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: height * .04,
              ),
              CustomTextField(
                hint: "Phone",
                textInputType: TextInputType.phone,
              ),
              SizedBox(
                height: height * .04,
              ),
              CustomTextField(
                hint: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: height * .04,
              ),
              CustomTextField(
                hint: "Password",
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: height * .04,
              ),
              CustomTextField(
                hint: "RePassword",
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: height * .04,
              ),

              Center(
                  child: CustomElevatedButton(
                    label: "Register",
                    onTap: () {
                      Navigator.popAndPushNamed(context, Routes.mainRoute);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
