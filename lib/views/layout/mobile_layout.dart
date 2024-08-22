import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_center_widget.dart';
import 'package:responsive_dashboard/views/widgets/last_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomCenterWidget(),
        SizedBox(
          height: 32,
        ),
        LastSection(),
      ],
    );
  }
}