import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/my_card.dart';

class LastSection extends StatelessWidget {
  const LastSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      margin: const EdgeInsets.only(top: 40,right: 32),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: ListView(
        children: const [
          MyCard(),
          //Transaction History()
          //IncomeDetails()
        ],
      ),
    );
  }
}
