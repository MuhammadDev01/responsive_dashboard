import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_widget.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_widget.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          AllExpensesWidget(),
          SizedBox(
            height: 24,
          ),
          QuickInvoiceWidget(),
        ],
      ),
    );
  }
}
