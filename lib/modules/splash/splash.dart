import 'package:ecommerce/utils/constance.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  const Splash({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Text(
                "Find your\nGadget",
                style: theme.textTheme.headline1,
              ),
              Container(
                height: 486.h,
                width: 486.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(ConstanceData.saly50),
                  fit: BoxFit.contain,
                )),
              ),
              SizedBox(height: 20.h),
              btnWidget(
                theme: theme,
                context: context,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget btnWidget({ThemeData theme, context}) => Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/login", (route) => false);
          },
          child: Container(
            height: 70.h,
            width: 314.w,
            decoration: BoxDecoration(
              color: theme.backgroundColor,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            alignment: Alignment.center,
            child: Text(
              "Get Started",
              style: theme.textTheme.button,
            ),
          ),
        ),
      );
}
