import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCardBuilder extends StatelessWidget {
  const MyCardBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff4EB7F2),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              Assets.imagesCardBackground,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.only(right: 31, left: 31, top: 15),
              title: Text(
                'Name card',
                style: AppStyles.styleRegular16(context).copyWith(
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: const Icon(Icons.image),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context)
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleRegular16(context)
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
