import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.model,
  });

  final UserInfoModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: Padding(
      padding: const EdgeInsets.all(12.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: SvgPicture.asset(
            model.image,
          ),
          title: Text(
            model.name,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xff064061),
            ),
          ),
          subtitle: Text(
            model.email,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
