import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/income_details.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardAndTransactionHistory(),
        SizedBox(
          height: 24,
        ),
        IncomeDetails(),
        SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
