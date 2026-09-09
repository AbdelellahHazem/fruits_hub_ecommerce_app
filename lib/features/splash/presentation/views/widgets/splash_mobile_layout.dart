import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub_ecommerce_app/core/utils/app_images.dart';
import 'package:fruits_hub_ecommerce_app/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashMobileLayout extends StatefulWidget {
  const SplashMobileLayout({super.key});

  @override
  State<SplashMobileLayout> createState() => _SplashMobileLayoutState();
}

class _SplashMobileLayoutState extends State<SplashMobileLayout> {
  @override
  void initState() {
    executeNavation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.imagesPlant)],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(Assets.imagesSplashBottom),
      ],
    );
  }

  void executeNavation() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}
