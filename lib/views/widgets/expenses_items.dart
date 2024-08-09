import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item.dart';

class ExpensesItems extends StatelessWidget {
  const ExpensesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: ExpensesItem()),
        SizedBox(
          width: 20,
        ),
        Expanded(child: ExpensesItem()),
        SizedBox(
          width: 20,
        ),
        Expanded(child: ExpensesItem()),
      ],
    );
  }
}
