import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart_list_view.dart';

class IncomeChartAndDetailsWidget extends StatelessWidget {
  const IncomeChartAndDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
        children: [
          IncomeChart(),
          SizedBox(
            width: 40,
          ),
          IncomeChartListView(),
        ],
      ),
    );
  }
}
