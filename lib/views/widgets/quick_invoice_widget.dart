import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/customer_details.dart';
import 'package:responsive_dashboard/views/widgets/customer_details_grid.dart';
import 'package:responsive_dashboard/views/widgets/latest_transaction_widget.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_header.dart';

class QuickInvoiceWidget extends StatelessWidget {
  const QuickInvoiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(24.0),
      child: const Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransactionWidget(),
          Divider(
            height: 48,
            color: Color(0xffF1F1F1),
          ),
          CustomerDetailsGrid(),
        ],
      ),
    );
  }
}
