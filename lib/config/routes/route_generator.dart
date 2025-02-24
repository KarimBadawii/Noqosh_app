import 'package:flutter/material.dart';
import 'package:noqosh_app/config/routes/routes.dart';
import 'package:noqosh_app/features/auth/presentation/sign_in_screen.dart';
import 'package:noqosh_app/features/auth/presentation/sign_up_screen.dart';
import 'package:noqosh_app/features/home/presentation/pages/home_page.dart';
import 'package:noqosh_app/features/payment/presentation/pages/payment.dart';
import 'package:noqosh_app/features/setting/presentation/pages/setting_page.dart';
import 'package:noqosh_app/features/translate/presentation/pages/translate_page.dart';
import 'package:noqosh_app/features/trips/presentation/pages/trips_page.dart';

import '../../main_layout.dart';
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => const MainLayout());

      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.translateRoute:
        return MaterialPageRoute(builder: (_) => const TranslateScreen());

      case Routes.tripsRoute:
        return MaterialPageRoute(builder: (_) => const TripsScreen());

      case Routes.settingsRoute:
        return MaterialPageRoute(builder: (_) => const SettingScreen());

      case Routes.paymentRoute:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('No Route Found'),
        ),
        body: const Center(child: Text('No Route Found')),
      ),
    );
  }
}
