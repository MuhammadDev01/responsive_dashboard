import 'package:flutter/material.dart';
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
        ],
      ),
    );
  }
}
