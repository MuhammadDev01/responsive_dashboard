import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_chart_and_details_widget.dart';
import 'package:responsive_dashboard/views/widgets/income_details_header.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: const Column(
        children: [
          IncomeDetailsHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeChartAndDetailsWidget(),
        ],
      ),
    );
  }
}
