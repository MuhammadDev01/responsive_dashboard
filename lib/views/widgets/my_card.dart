import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/views/widgets/my_card_builder.dart';
import 'package:expandable_page_view/expandable_page_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        ExpandablePageView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) => const MyCardBuilder(),
        ),
        const SizedBox(
          height: 20,
        ),
        const DotsIndicator(),
      ],
    );
  }
}
