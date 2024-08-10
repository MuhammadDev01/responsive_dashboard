import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/expenses_blue_item.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item.dart';

class ExpensesItems extends StatefulWidget {
  const ExpensesItems({super.key});

  @override
  State<ExpensesItems> createState() => _ExpensesItemsState();
}

class _ExpensesItemsState extends State<ExpensesItems> {
  List<ExpensesItemModel> items = [
    ExpensesItemModel(
        title: 'Balance', avatarImage: Assets.imagesBalance, isActive: true),
    ExpensesItemModel(
        title: 'Income', avatarImage: Assets.imagesIncome, isActive: false),
    ExpensesItemModel(
        avatarImage: Assets.imagesExpenses, title: 'Expenses', isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: items.asMap().entries.map((e) {
          int index = e.key;
          ExpensesItemModel item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  for (var element in items) {
                    element.isActive = false;
                  }
                  item.isActive = true;
                });
              },
              child: item.isActive
                  ? Padding(
                      padding: EdgeInsets.only(right: index == 2 ? 0 : 12),
                      child: ActiveExpensesItem(
                        model: item,
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(right: index == 2 ? 0 : 12),
                      child: ExpensesItem(model: item),
                    ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
