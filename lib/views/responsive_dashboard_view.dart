import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/utils/config_size.dart';
import 'package:responsive_dashboard/views/layout/desktop_layout.dart';
import 'package:responsive_dashboard/views/layout/mobile_layout.dart';
import 'package:responsive_dashboard/views/layout/tablet_layout.dart';
import 'package:responsive_dashboard/views/widgets/adaptive_layout_widget.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';

class ResponsiveDashboardView extends StatelessWidget {
  const ResponsiveDashboardView({super.key});
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffFAFAFA),
      drawer: const CustomDrawer(),
      appBar:
          width < ConfigSize.tabletSize ? appBarMobileLayout(context) : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }

  AppBar appBarMobileLayout(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff4EB7F2),
      title: Text(
        'DashBoard',
        style: AppStyles.styleSemiBold24(context).copyWith(color: Colors.white),
      ),
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          )),
    );
  }
}
