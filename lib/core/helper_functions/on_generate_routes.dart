import 'package:flutter/material.dart';
import 'package:fruits_hub_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';
import 'package:fruits_hub_ecommerce_app/features/splash/presentation/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => const OnBoardingView());

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
