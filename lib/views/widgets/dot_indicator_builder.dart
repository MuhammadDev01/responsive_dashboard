import 'package:flutter/material.dart';

class DotIndicatorBuilder extends StatelessWidget {
  const DotIndicatorBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 4,
      backgroundColor: Color(0xffE8E8E8),
    );
  }
}
