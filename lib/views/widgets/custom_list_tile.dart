import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset(
          image,
        ),
        title: Text(
          title,
          style: AppStyles.styleSemiBold16(context).copyWith(
            color: const Color(0xff064061),
          ),
        ),
        subtitle: Text(
          subtitle,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
