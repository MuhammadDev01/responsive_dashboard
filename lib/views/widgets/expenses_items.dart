import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/expenses_blue_item.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item.dart';

class ExpensesItems extends StatelessWidget {
  const ExpensesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          const Expanded(child: ExpensesBlueItem()),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: ExpensesItem(
            model: ExpensesItemModel(
                avatarImage: Assets.imagesExpenses,
                title: 'Expenses',
                date: 'April 2022',
                price: r'$20,129'),
          )),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: ExpensesItem(
            model: ExpensesItemModel(
                avatarImage: Assets.imagesIncome,
                title: 'Income',
                date: 'April 2022',
                price: r'$20,129'),
          )),
        ],
      ),
    );
  }
}
