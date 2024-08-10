import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ActiveExpensesItem extends StatelessWidget {
  const ActiveExpensesItem({
    super.key,
    required this.model,
  });
  final ExpensesItemModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesBlueItemHeader(
            image: model.avatarImage,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            model.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            'April 2022',
            style: AppStyles.styleRegular14(context).copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            r'$20,129',
            style: AppStyles.styleSemiBold24(context).copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ExpensesBlueItemHeader extends StatelessWidget {
  const ExpensesBlueItemHeader({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white.withOpacity(0.1),
          child: SvgPicture.asset(
            image,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios_outlined,
          size: 20,
          color: Colors.white,
        ),
      ],
    );
  }
}
