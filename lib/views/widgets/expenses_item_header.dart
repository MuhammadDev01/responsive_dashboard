import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_images.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: const Color(0xffFAFAFA),
          child: SvgPicture.asset(Assets.imagesExpenses),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: Colors.black54,
        ),
      ],
    );
  }
}
