import 'package:flutter/material.dart';
import 'package:start_up/utilities/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NumberField extends StatelessWidget {
  const NumberField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.phone_outlined,
          color: UIColors.primaryColor,
        ),
        labelText: 'Phone number',
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
