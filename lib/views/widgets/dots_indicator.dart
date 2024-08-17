import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/active_dot_indicator_builder.dart';
import 'package:responsive_dashboard/views/widgets/dot_indicator_builder.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key, required this.currnetIndex});
  final int currnetIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      3,
      (index) => Padding(
        padding: const EdgeInsets.only(right: 5),
        child: currnetIndex == index
            ? const ActiveDotIndicatorBuilder()
            : const DotIndicatorBuilder(),
      ),
    ));
  }
}
