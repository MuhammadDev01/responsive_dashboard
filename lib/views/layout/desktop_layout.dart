import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(flex:2, child: CustomDrawer()),
        Expanded(flex: 5, child: Container(
          color: Colors.amber,
        )),
        Expanded(flex: 3, child: Container(
          color: Colors.red,
        )),
      ],
    );
  }
}
