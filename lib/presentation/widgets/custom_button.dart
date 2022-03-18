import 'package:flutter/cupertino.dart';
import 'package:start_up/utilities/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() onTap;

  const CustomButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      margin: EdgeInsets.symmetric(horizontal: 24.w),
      width: double.infinity,
      child: CupertinoButton(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        color: UIColors.primaryColor,
        onPressed: onTap,
        child: Text(
          title,
          style: TextStyle(fontFamily: 'Inter'),
        ),
      ),
    );
  }
}
