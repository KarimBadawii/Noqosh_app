import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noqosh_app/core/utils/color_manager.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.containerGray,
    );
  }
}
