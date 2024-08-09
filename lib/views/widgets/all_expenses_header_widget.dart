import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/drop_down_date_widget.dart';

class AllExpensesHeaderWidget extends StatefulWidget {
  const AllExpensesHeaderWidget({super.key});

  @override
  State<AllExpensesHeaderWidget> createState() =>
      _AllExpensesHeaderWidgetState();
}

class _AllExpensesHeaderWidgetState extends State<AllExpensesHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const DropdownDateWidget(),
      ],
    );
  }
}

