import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_center_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/last_section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      CustomDrawer(),
      SizedBox(
        width: 28,
      ),
      Expanded(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 40,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomCenterWidget(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(child: LastSection()),
          ],
        ),
      ),
      SizedBox(
        width: 28,
      ),
    ]);
  }
}
