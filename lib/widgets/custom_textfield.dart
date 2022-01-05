import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class CustomTextField extends StatefulWidget {
  final IconData hintIcon;
  final String hintText;
  final TextEditingController controller;
  final String labelText;

  const CustomTextField(
      {Key key, this.hintIcon, this.hintText, this.controller, this.labelText})
      : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30.h,
            width: 414.w,
            child: Row(
              children: [
                Icon(
                  widget.hintIcon,
                  size: 24.sp,
                  color: Colors.grey,
                ),
                SizedBox(width: 20.w),
                Text(
                  widget.hintText,
                  style: theme.textTheme.caption.copyWith(
                    color: Colors.grey,
                    fontSize: 15.sp,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          TextFormField(
            style: theme.textTheme.caption,
            controller: widget.controller,
            decoration: InputDecoration(
              hintText: widget.labelText,
              hintStyle: theme.textTheme.caption,
            ),
          ),
        ],
      ),
    );
  }
}
