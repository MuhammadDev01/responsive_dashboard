import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_chart_model.dart';
import 'package:responsive_dashboard/views/widgets/income_chart_item.dart';

class IncomeChartListView extends StatelessWidget {
  const IncomeChartListView({super.key});
  static const items = [
    IncomeChartModel(
      circleColor: Color(0xff208CC8),
      present: '40%',
      title: 'Design Service',
    ),
    IncomeChartModel(
      circleColor: Color(0xff4EB7F2),
      present: '25%',
      title: 'Design Product',
    ),
    IncomeChartModel(
      circleColor: Color(0xff064061),
      present: '20%',
      title: 'Product royalti',
    ),
    IncomeChartModel(
      circleColor: Color(0xffE2DECD),
      present: '22%',
      title: 'Other',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        itemBuilder: (context, index) => IncomeChartItem(model: items[index]),
      ),
    );
  }
}
