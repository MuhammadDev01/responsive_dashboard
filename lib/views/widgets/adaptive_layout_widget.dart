import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/config_size.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tabletLayout,
      required this.desktopLayout});

  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < ConfigSize.tabletSize) {
        return mobileLayout(context);
      } else if (constrains.maxWidth < ConfigSize.desktopSize) {
        return tabletLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
