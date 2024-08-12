import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/custom_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const items = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
      image: Assets.imagesAvatar1,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: Assets.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
      image: Assets.imagesAvatar1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (e) => IntrinsicWidth(
                child: CustomListTile(
                  model: e,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
