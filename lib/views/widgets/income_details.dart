import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
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
      child: Column(
        children: [
          const IncomeDetailsHeader(),
          const SizedBox(
            height: 16,
          ),
          const IncomeChartAndDetailsWidget(),
          const Divider(
            height: 56,
            color: Color(0xffF1F1F1),
          ),
          Text(
            'See detail',
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xff4EB7F2),
            ),
          ),
        ],
      ),
    );
  }
}
