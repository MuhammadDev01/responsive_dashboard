import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.color, this.colortext});
  final String text;
  final Color? color;
  final Color? colortext;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        backgroundColor: color ?? const Color(0xff4EB7F2),
        padding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: AppStyles.styleSemiBold18(context).copyWith(
          color: colortext,
        ),
      ),
    );
  }
}
