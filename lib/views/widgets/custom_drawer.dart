import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/views/widgets/custom_list_tile.dart';

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
        ],
      ),
    );
  }
}

class DrawerItemsListView extends StatelessWidget {
  const DrawerItemsListView({
    super.key,
    this.color = const Color(0xff4EB7F2),
  });
  final Color color;
  static List<DrawerItemModel> items = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: 'My Transctions'),
    DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DrawerItem(
        image: items[index].image,
        title: items[index].title,
        style: index == 0
            ? AppStyles.styleBold16(context)
            : AppStyles.styleRegular16(context),
      ),
      itemCount: items.length,
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.image,
    required this.title,
    required this.style,
  });

  final String image;
  final String title;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        image,
      ),
      title: Text(
        title,
        style: style,
      ),
    );
  }
}
