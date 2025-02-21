import 'package:flutter/material.dart';
import 'package:noqosh_app/config/routes/routes.dart';
import 'package:noqosh_app/features/auth/presentation/sign_in_screen.dart';
import 'package:noqosh_app/features/auth/presentation/sign_up_screen.dart';
import 'package:noqosh_app/features/payment/presentation/pages/payment.dart';
class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.paymentRoute:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());

      case Routes.signInRoute:
        return MaterialPageRoute(builder: (_) => const SignInScreen());

      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      // case Routes.cartRoute:
      //   return MaterialPageRoute(builder: (_) => const CartScreen());

      // case Routes.mainRoute:
      //   return MaterialPageRoute(builder: (_) => const MainLayout());

      // case Routes.productsScreenRoute:
      //   return MaterialPageRoute(builder: (_) => const ProductsScreen());

      // case Routes.productDetails:
      //   return MaterialPageRoute(builder: (_) => const ProductDetails());

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
