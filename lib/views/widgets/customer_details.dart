import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/customer_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_text_field.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({super.key, required this.model});
  final CustomerModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          model.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: model.hint),
      ],
    );
  }
}
