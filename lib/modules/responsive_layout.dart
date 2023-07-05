import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.buildDesktopLayout,
    required this.buildMobileLayout,
  });

  final Widget buildMobileLayout;
  final Widget buildDesktopLayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 600) {
        // Desktop layout
        return buildDesktopLayout;
      } else {
        // Mobile layout
        return buildMobileLayout;
      }
    });
  }
}
