import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/drop_down_date_widget.dart';

class IncomeDetails extends StatefulWidget {
  const IncomeDetails({super.key});

  @override
  State<IncomeDetails> createState() => _IncomeDetailsState();
}

class _IncomeDetailsState extends State<IncomeDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Income',
                style: AppStyles.styleSemiBold20(context),
              ),
              const DropdownDateWidget(),
            ],
          ),
        ],
      ),
    );
  }
}
