import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noqosh_app/config/routes/route_generator.dart';
import 'package:noqosh_app/config/routes/routes.dart';
import 'package:noqosh_app/core/utils/assets_manager.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import 'package:noqosh_app/core/utils/font_manager.dart';
import 'package:noqosh_app/core/utils/styles_manager.dart';
import 'package:noqosh_app/core/utils/values_manager.dart';
import 'package:noqosh_app/core/widget/custom_elevated_button.dart';
import 'package:noqosh_app/main.dart';

import '../../../core/widget/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: ColorManager.secondary,
          image: const DecorationImage(
              image: AssetImage(ImageAssets.authBg),
              alignment: Alignment.topCenter)),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: EdgeInsets.only(
              top: AppPadding.p100.h,
              right: AppPadding.p20.w,
              left: AppPadding.p20.w,
              bottom: AppPadding.p8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
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
                height: 50.h,
              ),
              CustomTextField(
                hint: "Email",
                textInputType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 50.h,
              ),
              CustomTextField(
                hint: "Password",
                textInputType: TextInputType.visiblePassword,
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: getRegularStyle(color: ColorManager.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
              ),
              Center(
                  child: CustomElevatedButton(
                label: "Login",
                onTap: () {
                  Navigator.popAndPushNamed(context, Routes.mainRoute);
                },
              )),
              SizedBox(
                height: 30.h,
              ),
              Center(
                  child: Text(
                "or Login with",
                style: getLightStyle(
                    color: ColorManager.black, fontSize: FontSize.s18),
              )),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture(SvgAssetLoader(SvgAssets.googleButton)),
                  SvgPicture(SvgAssetLoader(SvgAssets.facebookButton)),
                  SvgPicture(SvgAssetLoader(SvgAssets.appleButton)),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t Have an account ? ",
                    style: getLightStyle(
                        color: ColorManager.black, fontSize: FontSize.s18),
                  ),
                  InkWell(
                     onTap: () => Navigator.pushNamed(context,Routes.signUpRoute),
                      child: Text(
                    "Signup",
                    style: getBoldStyle(
                        color: ColorManager.primary, fontSize: FontSize.s25),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
