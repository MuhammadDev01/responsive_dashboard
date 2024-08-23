import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart_list_view.dart';

class IncomeChartAndDetailsWidget extends StatelessWidget {
  const IncomeChartAndDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(height: 120, child: IncomeChart()),
        SizedBox(
          width: 40,
        ),
        Expanded(child: IncomeChartListView()),
      ],
    );
  }
}
