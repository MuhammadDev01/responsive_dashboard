import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TransactionHistoryItemBuilder extends StatelessWidget {
  const TransactionHistoryItemBuilder({super.key, required this.model});
  final TransactionHistoryModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        title: Text(
          model.titleProccess,
          style: AppStyles.styleBold16(context).copyWith(
            color: Colors.black,
          ),
        ),
        subtitle: Text(
          model.subtitleDate,
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          model.traillingCash,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color: model.isWithdrawal
                ? const Color(0xffF3735E)
                : const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
