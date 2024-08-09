import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        children: [
          ExpensesItemHeader(),
        ],
      ),
    );
  }
}
