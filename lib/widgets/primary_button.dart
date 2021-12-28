import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class PrimaryButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPressed;

  const PrimaryButton({Key key, this.btnText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Center(
        child: Container(
          height: 70.h,
          width: 314.w,
          decoration: BoxDecoration(
            color: theme.primaryColor,
            borderRadius: BorderRadius.circular(10.sp),
          ),
          alignment: Alignment.center,
          child: Text(
            btnText,
            style: theme.textTheme.button.copyWith(
              color: theme.backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
