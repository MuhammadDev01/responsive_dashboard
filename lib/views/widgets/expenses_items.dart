import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/active_expenses_item.dart';
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
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < 430
        ? SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      updateIndex(0);
                    },
                    child: selectedIndex == 0
                        ? ActiveExpensesItem(model: items[0])
                        : ExpensesItem(model: items[0]),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      updateIndex(1);
                    },
                    child: selectedIndex == 1
                        ? ActiveExpensesItem(model: items[1])
                        : ExpensesItem(model: items[1]),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      updateIndex(2);
                    },
                    child: selectedIndex == 2
                        ? ActiveExpensesItem(model: items[2])
                        : ExpensesItem(model: items[2]),
                  )
                ],
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(0);
                    },
                    child: selectedIndex == 0
                        ? ActiveExpensesItem(model: items[0])
                        : ExpensesItem(model: items[0]),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(1);
                    },
                    child: selectedIndex == 1
                        ? ActiveExpensesItem(model: items[1])
                        : ExpensesItem(model: items[1]),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      updateIndex(2);
                    },
                    child: selectedIndex == 2
                        ? ActiveExpensesItem(model: items[2])
                        : ExpensesItem(model: items[2]),
                  ),
                )
              ],
            ),
          );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
    
    
    // Padding(
    //   padding: const EdgeInsets.only(top: 16),
    //   child: Row(
    //     children: items.asMap().entries.map((e) {
    //       ExpensesItemModel item = e.value;
    //       return Expanded(
    //         child: GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               for (var element in items) {
    //                 element.isActive = false;
    //               }
    //               item.isActive = true;
    //             });
    //           },
    //           child: item.isActive
    //               ? Padding(
    //                   padding: const EdgeInsets.only(right: 12),
    //                   child: Expanded(
    //                     child: ActiveExpensesItem(
    //                       model: item,
    //                     ),
    //                   ),
    //                 )
    //               : Padding(
    //                   padding: const EdgeInsets.only(right: 12),
    //                   child: Expanded(
    //                     child: ExpensesItem(model: item),
    //                   ),
    //                 ),
    //         ),
    //       );
    //     }).toList(),
    //   ),
    // );
  
