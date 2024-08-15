import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator_builder.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (index) => const Padding(
        padding: EdgeInsets.only(right: 5),
        child: DotIndicatorBuilder(),
      ),
    ));
  }
}
