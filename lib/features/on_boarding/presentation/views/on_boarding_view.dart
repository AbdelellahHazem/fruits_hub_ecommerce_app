import 'package:flutter/material.dart';
import 'package:fruits_hub_ecommerce_app/core/utils/size_config.dart';
import 'package:fruits_hub_ecommerce_app/core/widgets/adaptive_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_desktop_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_mobile_layout.dart';
import 'package:fruits_hub_ecommerce_app/features/on_boarding/presentation/views/widgets/on_boarding_tablet_layout.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  static const String routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (_) => const SafeArea(child: OnBoardingMobileLayout()),
        tabletLayout: (_) => const OnBoardingTabletLayout(),
        desktopLayout: (_) => const OnBoardingDesktopLayout(),
      ),
    );
  }
}
