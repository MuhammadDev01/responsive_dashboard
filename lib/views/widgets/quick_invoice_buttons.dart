import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            text: 'Add more details',
            colortext: Color(0xff4EB7F2),
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: CustomButton(
            text: 'Send money',
          ),
        ),
      ],
    );
  }
}
