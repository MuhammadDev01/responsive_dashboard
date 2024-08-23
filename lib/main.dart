import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/responsive_dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const ResponsiveDashboard(),
      enabled: !kReleaseMode,
    ),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsiveDashboardView(),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
    );
  }
}
