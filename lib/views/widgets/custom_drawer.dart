import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer_list_view.dart';
import 'package:responsive_dashboard/views/widgets/custom_list_tile.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 20),
      color: Colors.white,
      width: 280,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 80,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomListTile(
              model: UserInfoModel(
                image: Assets.imagesAvatar3,
                name: 'Lekan Okeowo',
                email: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
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
          ),
        ],
      ),
    );
  }
}
