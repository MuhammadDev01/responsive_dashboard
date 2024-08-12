import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_widget.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_widget.dart';

class CustomCenterWidget extends StatelessWidget {
  const CustomCenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFAFAFA),
      child: const Padding(
        padding: EdgeInsets.only(top: 40, right: 24, left: 32, bottom: 32),
        child: Column(
          children: [
            AllExpensesWidget(),
            SizedBox(
              height: 24,
            ),
            Expanded(child: QuickInvoiceWidget()),
          ],
        ),
      ),
    );
  }
}
