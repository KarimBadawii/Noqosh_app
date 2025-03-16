import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';
import '../../../../core/widget/title_bar_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isDarkMode = false;
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.containerGray,
      body: Stack(
        children: [
          SizedBox(height: 100.h,),
          TitleBar(title: "Settings",isBack: false, hasSettings: false),
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 65.h,),
            // account
            Padding(
              padding: const EdgeInsets.all(10.0),
                child: Text("Account",style: TextStyle(color: ColorManager.black,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Edit Profile'),
                      trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
                      onTap: () {
                        Navigator.pushNamed(context, '/editProfile');
                      },
                    ),
                    ListTile(
                      title: const Text('Security'),
                      trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
                      onTap: () {
                        // Navigate to notifications settings
                      },
                    ),
                    ListTile(
                      title: const Text('Notifications'),
                      trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
                      onTap: () {
                        // Navigate to notifications settings
                      },
                    ),
                    ListTile(
                      title: const Text('Privacy'),
                      trailing: const Icon(Icons.keyboard_double_arrow_right_outlined),
                      onTap: () {
                        // Navigate to privacy settings
                      },
                    ),
                  ],
                ),
              ),
            ),
            // theme
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Theme",style: TextStyle(color: ColorManager.black,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SwitchListTile(
                  title: const Text('Dark Mode'),
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                    // Add logic to change app theme
                  },
                ),
              ),
            ),
            // language
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Language",style: TextStyle(color: ColorManager.black,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Language'),
                      subtitle: Text(_selectedLanguage),
                      onTap: () {
                        _showLanguageDialog(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
            // Actions
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Actions",style: TextStyle(color: ColorManager.black,fontSize: 20.sp,fontWeight: FontWeight.bold),)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  title: const Text('Logout',style: TextStyle(color: Colors.red,),),
                  leading: const Icon(Icons.logout_outlined,color: Colors.red,),
                  onTap: () {
                    // Navigate to notifications settings
                  },
                ),
              ),
            ),

          ],
        ),

        ]
      ),
    );
  }
  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select Language'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'English';
                  });
                  Navigator.pop(context);
                  // Add logic to change app language
                },
              ),
              ListTile(
                title: const Text('Spanish'),
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'Spanish';
                  });
                  Navigator.pop(context);
                  // Add logic to change app language
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

