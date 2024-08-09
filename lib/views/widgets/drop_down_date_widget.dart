import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DropdownDateWidget extends StatefulWidget {
  const DropdownDateWidget({super.key});

  @override
  State<DropdownDateWidget> createState() => _DropdownDateWidgetState();
}

class _DropdownDateWidgetState extends State<DropdownDateWidget> {
  int currnetIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffF1F1F1),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<int>(
          borderRadius: BorderRadius.circular(10),
          padding: const EdgeInsets.symmetric(horizontal: 5),
          dropdownColor: Colors.white,
          icon: Transform.rotate(
              angle: -1.5708,
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 10, right: 10),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 16,
                ),
              )),
          value: currnetIndex,
          items: [
            DropdownMenuItem(
              value: 0,
              child: Text(
                'Daily',
                style: AppStyles.styleMedium16(context),
              ),
            ),
            DropdownMenuItem(
              value: 1,
              child: Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
            ),
            DropdownMenuItem(
              value: 2,
              child: Text(
                'Year',
                style: AppStyles.styleMedium16(context),
              ),
            ),
          ],
          onChanged: (index) {
            setState(() {
              currnetIndex = index!;
            });
          },
        ),
      ),
    );
  }
}
