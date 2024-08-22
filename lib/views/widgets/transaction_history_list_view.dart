import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_history_model.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_item_builder.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionHistoryModel(
      titleProccess: 'Cash Withdrawal',
      subtitleDate: '13 Apr,2022',
      traillingCash: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      titleProccess: 'Landing Page project',
      subtitleDate: '13 Apr,2022 at 3:30 PM',
      traillingCash: r'$2000',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      titleProccess: 'Juni Mobile App project',
      subtitleDate: '13 Apr,2022 at 3:30 PM',
      traillingCash: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: items
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: TransactionHistoryItemBuilder(model: e),
              ),
            )
            .toList());
  }
}
