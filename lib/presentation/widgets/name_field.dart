import 'package:flutter/material.dart';
import 'package:start_up/utilities/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameField extends StatelessWidget {
  const NameField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
        labelStyle: TextStyle(
          color: UIColors.greyColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        fillColor: UIColors.fieldColor,
        filled: true,
      ),
    );
  }
}
