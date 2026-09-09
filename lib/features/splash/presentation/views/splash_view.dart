import 'package:flutter/material.dart';
import 'package:fruits_hub_ecommerce_app/core/utils/size_config.dart';
import 'package:fruits_hub_ecommerce_app/core/widgets/adaptive_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/splash/presentation/views/widgets/splash_desktop_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/splash/presentation/views/widgets/splash_mobile_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/splash/presentation/views/widgets/splash_tablet_layout.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "splash";

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (_) => SafeArea(child: const SplashMobileLayout()),
        tabletLayout: (_) => const SplashTabletLayout(),
        desktopLayout: (_) => const SplashDesktopLayout(),
      ),
    );
  }
}
