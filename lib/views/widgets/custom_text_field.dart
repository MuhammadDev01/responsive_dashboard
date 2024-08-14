import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        contentPadding: const EdgeInsets.all(20),
        border: outLineBorderBuilder(),
        enabledBorder: outLineBorderBuilder(),
        errorBorder: outLineBorderBuilder(),
        focusedBorder: outLineBorderBuilder(),
      ),
    );
  }

  OutlineInputBorder outLineBorderBuilder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xffFAFAFA),
        ),
      );
  }
}
