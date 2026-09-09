import 'package:flutter/material.dart';
import 'package:fruits_hub_ecommerce_app/core/utils/size_config.dart';

typedef LayoutBuilderCallback = Widget Function(BuildContext context);

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  final LayoutBuilderCallback mobileLayout;
  final LayoutBuilderCallback tabletLayout;
  final LayoutBuilderCallback desktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < SizeConfig.tablet) {
          return mobileLayout(context);
        }
        if (constraints.maxWidth < SizeConfig.desktop) {
          return tabletLayout(context);
        }
        return desktopLayout(context);
      },
    );
  }
}
