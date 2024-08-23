import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_chart_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeChartItem extends StatelessWidget {
  const IncomeChartItem({super.key, required this.model});
  final IncomeChartModel model;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: model.circleColor,
        ),
        const SizedBox(
          width: 12,
        ),
        Expanded(
          child: Text(
            model.title,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.styleRegular16(context),
          ),
        ),
        Text(
          model.present,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xff208CC8)),
        ),
      ],
    );
  }
}
