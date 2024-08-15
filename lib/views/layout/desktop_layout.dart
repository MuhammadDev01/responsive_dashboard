import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_center_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/last_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        Expanded(flex: 5, child: CustomCenterWidget()),
        Expanded(flex: 3, child: LastSection()),
      ],
    );
  }
}
