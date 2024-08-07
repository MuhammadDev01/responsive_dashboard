import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_list_view.dart';
import 'package:responsive_dashboard/views/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          CustomListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          DrawerItemsListView(),
          Expanded(child: SizedBox()),
          DrawerItem(
            item: DrawerItemModel(
              image: Assets.imagesSettings,
              title: 'Setting system',
            ),
          ),
          DrawerItem(
            item: DrawerItemModel(
              image: Assets.imagesLogout,
              title: 'Logout account',
            ),
          ),
          SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
