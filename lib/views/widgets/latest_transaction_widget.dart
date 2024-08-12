import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/list_tile_latest_transaction_list_view.dart';

class LatestTransactionWidget extends StatelessWidget {
  const LatestTransactionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Transaction',
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(
            height: 12,
          ),
          const LatestTransactionListView(),
        ],
      ),
    );
  }
}
