import 'package:flutter/material.dart';
import 'package:noqosh_app/core/widget/title_bar_widget.dart';
import '../../../../config/routes/routes.dart';
import '../../../../core/utils/color_manager.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceInfo = MediaQuery.of(context);
    return  Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
            children: [
              SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile image
            Padding(
              padding:  EdgeInsets.only(top: deviceInfo.size.height * .15, left: deviceInfo.size.width * .27, ),
                child: CircleAvatar(
                  radius: 90,
                  // backgroundImage: AssetImage('assets/profile.jpg'),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt_outlined, color: Colors.black),
                      onPressed: () {
                        // Add logic to change the photo
                      },
                    ),
                  ),
                ),
            ),
          SizedBox(
            height: deviceInfo.size.height * .03,
          ),
          //   Name
            Padding(
              padding:  EdgeInsets.only(left:  deviceInfo.size.width * .05, ),
              child: Text("Name",style: TextStyle(color: ColorManager.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:  EdgeInsets.only(top: deviceInfo.size.height * .01, left: deviceInfo.size.width * .05, ),
                child:  SizedBox(
                  width: deviceInfo.size.width * .9,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                )),
          //   username
            Padding(
              padding:  EdgeInsets.only(top: deviceInfo.size.height * .02,left:  deviceInfo.size.width * .05, ),
              child: Text("Username",style: TextStyle(color: ColorManager.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:  EdgeInsets.only(top: deviceInfo.size.height * .01, left: deviceInfo.size.width * .05, ),
                child:  SizedBox(
                  width: deviceInfo.size.width * .9,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                )),
          //   email
            Padding(
              padding:  EdgeInsets.only(top: deviceInfo.size.height * .02,left:  deviceInfo.size.width * .05, ),
              child: Text("Email",style: TextStyle(color: ColorManager.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:  EdgeInsets.only(top: deviceInfo.size.height * .01, left: deviceInfo.size.width * .05, ),
                child:  SizedBox(
                  width: deviceInfo.size.width * .9,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                )),
          //   date of birth
            Padding(
              padding:  EdgeInsets.only(top: deviceInfo.size.height * .02,left:  deviceInfo.size.width * .05, ),
              child: Text("Date of Birth",style: TextStyle(color: ColorManager.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:  EdgeInsets.only(top: deviceInfo.size.height * .01, left: deviceInfo.size.width * .05, ),
                child:  SizedBox(
                  width: deviceInfo.size.width * .9,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Date of Birth',
                      border: OutlineInputBorder(),
                    ),
                  ),
                )),
          //   country
            Padding(
              padding:  EdgeInsets.only(top: deviceInfo.size.height * .02,left:  deviceInfo.size.width * .05, ),
              child: Text("Country",style: TextStyle(color: ColorManager.black,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
                padding:  EdgeInsets.only(top: deviceInfo.size.height * .01, left: deviceInfo.size.width * .05, ),
                child:  SizedBox(
                  width: deviceInfo.size.width * .9,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Country',
                      border: OutlineInputBorder(),
                    ),
                  ),
                )),
            SizedBox(
              height: deviceInfo.size.height * .3,)
          ],
        ),
      ),
              Padding(
                padding:  EdgeInsets.only(top:  deviceInfo.size.height * .045),
                child: TitleBar(title: "Edit Profile",hasSettings: false,newRouteName: Routes.settingsRoute),
              ),
    ]));
  }
}
