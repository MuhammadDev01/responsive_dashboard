import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/expenses_item_header.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.model});
  final ExpensesItemModel model;
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            image: model.avatarImage,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: AppStyles.styleSemiBold16(context),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'April 2022',
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            r'$20,129',
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
