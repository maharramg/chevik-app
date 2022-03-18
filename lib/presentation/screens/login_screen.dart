import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:start_up/presentation/widgets/custom_button.dart';
import 'package:start_up/presentation/widgets/number_field.dart';
import 'package:start_up/utilities/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:start_up/utilities/router/router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 68.h, left: 24.w),
          child: Text(
            'Chevik',
            style: TextStyle(
              color: UIColors.primaryColor,
              fontSize: 32.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 146.h, left: 24.w),
          child: Text(
            'Hello,\nLog in to your account ✌️',
            style: TextStyle(
              color: UIColors.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 16.h, left: 24.w),
          child: Text(
            'Please enter your phone number.We’ll text you verification code',
            style: TextStyle(
              color: UIColors.greyColor,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 72.h, left: 24.w, right: 24.w),
          child: NumberField(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32.h),
          child: CustomButton(
            title: 'Login',
            onTap: () {},
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 131.h, left: 88.w, right: 87.w),
          child: Container(
            height: 36.h,
            width: 200.w,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(
                  color: UIColors.greyColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(text: 'If you have not already got account '),
                  TextSpan(
                    text: 'Sign Up',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).pushNamed(RoutePaths.REGISTRATION);
                      },
                    style: TextStyle(
                      color: UIColors.primaryColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
