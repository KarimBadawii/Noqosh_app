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
              top: AppPadding.p40.h,
              right: AppPadding.p20.w,
              left: AppPadding.p20.w,
              bottom: AppPadding.p8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: getSemiBoldStyle(color: ColorManager.white),
              ),
              SizedBox(
                  width: 30,
                  child: Divider(
                    color: ColorManager.white,
                    thickness: 3.h,
                    height: 10.h,
                  )),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hint: "Full Name",
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hint: "Phone",
                textInputType: TextInputType.phone,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hint: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hint: "Password",
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextField(
                hint: "RePassword",
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 60.h,
              ),

              Center(
                  child: CustomElevatedButton(
                label: "Register",
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.mainRoute);
                },
              )),
              SizedBox(
                height: 30.h,
              ),
              Center(
                  child: Text(
                    "or Signup with",
                    style: getLightStyle(
                        color: ColorManager.black, fontSize: FontSize.s18),
                  )),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(image: AssetImage(ImageAssets.googleButton)),
                  Image(image: AssetImage(ImageAssets.facebookButton)),
                  Image(image: AssetImage(ImageAssets.appleButton)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " Have an account ? ",
                    style: getLightStyle(
                        color: ColorManager.black, fontSize: FontSize.s18),
                  ),
                  InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, Routes.signInRoute),
                      child: Text(
                        "Signin",
                        style: getBoldStyle(
                            color: ColorManager.primary,
                            fontSize: FontSize.s25),
                      )),
                ],
              ),
              Spacer()

            ],
          ),
        ),
      ),
    );
  }
}
