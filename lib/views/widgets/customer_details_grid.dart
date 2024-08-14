import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/customer_model.dart';
import 'package:responsive_dashboard/views/widgets/customer_details.dart';

class CustomerDetailsGrid extends StatelessWidget {
  const CustomerDetailsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomerDetails(
                model: CustomerModel(
                  title: 'Customer name',
                  hint: 'Type customer name',
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomerDetails(
                model: CustomerModel(
                  title: 'Customer email',
                  hint: 'Type customer email',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomerDetails(
                model: CustomerModel(
                  title: 'Item name',
                  hint: 'Type item name',
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomerDetails(
                model: CustomerModel(
                  title: 'Item mount',
                  hint: 'USD',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
