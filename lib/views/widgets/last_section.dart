import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/my_card_and_transaction_history.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: ListView(
        children: const [
          MyCardAndTransactionHistory(),
          //Transaction History()
          //IncomeDetails()
        ],
      ),
    );
  }
}
