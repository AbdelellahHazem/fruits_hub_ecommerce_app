import 'package:flutter/material.dart';

class SplashDesktopLayout extends StatelessWidget {
  const SplashDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.local_grocery_store_rounded,
              size: 180,
              color: Color(0xFFB9DCA5),
            ),
            SizedBox(width: 72),
            _DesktopSplashContent(),
          ],
        ),
      ),
    );
  }
}

class _DesktopSplashContent extends StatelessWidget {
  const _DesktopSplashContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 148,
          height: 148,
          decoration: const BoxDecoration(
            color: Color(0xFFE5F2D9),
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.eco_rounded,
            size: 82,
            color: Color(0xFF4E9F3D),
          ),
        ),
        const SizedBox(height: 36),
        Text(
          'Fruits Hub',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w800,
            color: const Color(0xFF203D25),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Fresh choices, delivered simply.',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(color: const Color(0xFF6E7F70)),
        ),
        const SizedBox(height: 52),
        const SizedBox(
          width: 180,
          child: LinearProgressIndicator(
            minHeight: 5,
            borderRadius: BorderRadius.all(Radius.circular(5)),
            backgroundColor: Color(0xFFDDEAD5),
            color: Color(0xFF4E9F3D),
          ),
        ),
      ],
    );
  }
}
