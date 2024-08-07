import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.item,
    this.isActive = false,
  });

  final DrawerItemModel item;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 1.0, end: isActive ? 1.05 : 1.0),
      duration: const Duration(milliseconds: 300),
      builder: (context, double scale, child) {
        return Transform.scale(
          scale: scale,
          child: child,
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        child: ListTile(
          leading: SvgPicture.asset(
            item.image,
          ),
          title: Text(
            item.title,
            style: isActive
                ? AppStyles.styleBold16(context)
                : AppStyles.styleRegular16(context),
          ),
          trailing: isActive
              ? Container(
                  width: 3.27,
                  color: const Color(0xff4EB7F2),
                )
              : null,
        ),
      ),
    );
  }
}
