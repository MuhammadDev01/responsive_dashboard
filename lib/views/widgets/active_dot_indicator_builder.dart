import 'package:flutter/material.dart';

class ActiveDotIndicatorBuilder extends StatelessWidget {
  const ActiveDotIndicatorBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4EB7F2),
      ),
    );
  }
}
