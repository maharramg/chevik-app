import 'package:flutter/material.dart';

import '../../utilities/constants/constants.dart';

class ActionButton extends StatelessWidget {
  final Function() onTap;
  final Color? color;
  final Widget child;

  const ActionButton({Key? key, required this.onTap, this.color, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        shape: AppConstants.shape(24),
        minimumSize: Size(24, 24),
        primary: color ?? Colors.white,
      ),
      child: child,
    );
  }
}
