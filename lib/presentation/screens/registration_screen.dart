import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:start_up/presentation/widgets/custom_button.dart';
import 'package:start_up/presentation/widgets/name_field.dart';
import 'package:start_up/presentation/widgets/number_field.dart';
import 'package:start_up/presentation/widgets/surname_field.dart';
import 'package:start_up/utilities/constants/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
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
          padding: EdgeInsets.only(top: 68.h, left: 14.w),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: UIColors.fieldColor,
              elevation: 0,
              shape: CircleBorder(),
              padding: EdgeInsets.all(10.w),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: UIColors.primaryColor,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32.h, left: 24.w),
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
          padding: EdgeInsets.only(top: 48.h, left: 24.w),
          child: Text(
            'Hello,\nPlease create your account 😻',
            style: TextStyle(
              color: UIColors.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32.h, left: 24.w, right: 24.w),
          child: NameField(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
          child: SurnameField(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
          child: DateTimeFormField(
            decoration: const InputDecoration(
              fillColor: UIColors.fieldColor,
              filled: true,
              hintStyle: TextStyle(color: Colors.black45),
              errorStyle: TextStyle(color: Colors.redAccent),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              suffixIcon: Icon(Icons.event_note),
              labelText: 'DD / MM / YY',
            ),
            mode: DateTimeFieldPickerMode.date,
            autovalidateMode: AutovalidateMode.always,
            validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
            onDateSelected: (DateTime value) {
              print(value);
            },
          ),
        ),
        //TODO: GENDER FIELD
        Padding(
          padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
          child: NumberField(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 32.h),
          child: CustomButton(
            title: 'Sign up',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
