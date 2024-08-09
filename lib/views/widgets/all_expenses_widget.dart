import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_header_widget.dart';
import 'package:responsive_dashboard/views/widgets/expenses_items.dart';

class AllExpensesWidget extends StatelessWidget {
  const AllExpensesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      ),
      padding: const EdgeInsets.all(20.0),
      child: const Column(
        children: [
          AllExpensesHeaderWidget(),
          ExpensesItems(),
        ],
      ),
    );
  }
}

