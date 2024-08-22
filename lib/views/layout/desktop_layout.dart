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
        CustomDrawer(),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    SizedBox(
                      width: 28,
                    ),
                    Expanded(flex: 3, child: CustomCenterWidget()),
                    SizedBox(
                      width: 28,
                    ),
                    Expanded(flex: 2, child: LastSection()),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 28,
        ),
      ],
    );
  }
}
