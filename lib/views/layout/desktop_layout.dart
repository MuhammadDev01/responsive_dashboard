import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_center_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: CustomDrawer()),
        const Expanded(flex: 5, child: CustomCenterWidget()),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}

