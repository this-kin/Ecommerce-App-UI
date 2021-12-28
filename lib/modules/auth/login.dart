import 'package:ecommerce/widgets/custom_textfield.dart';
import 'package:ecommerce/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 50.h),
            Padding(
              padding: EdgeInsets.only(left: 30.w),
              child: Text(
                "Welcome\nBack",
                style: theme.textTheme.headline1,
              ),
            ),
            SizedBox(height: 60.h),
            Container(
              height: 612.h,
              width: 414.w,
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.sp),
                  topRight: Radius.circular(15.sp),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.h),
                  Text(
                    "Login",
                    style: theme.textTheme.caption,
                  ),
                  SizedBox(height: 42.h),
                  CustomTextField(
                    hintIcon: Icons.email_outlined,
                    hintText: "Email",
                    labelText: "rosina@company.com",
                    controller: _emailController,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hintIcon: Icons.lock_open_rounded,
                    hintText: "Password",
                    labelText: "* * * * * * * *",
                    controller: _emailController,
                  ),
                  SizedBox(height: 25.h),
                  Text(
                    "Forgot passcode",
                    style: theme.textTheme.bodyText1,
                  ),
                  SizedBox(height: 60.h),
                  PrimaryButton(
                    onPressed: () {
                      //
                    },
                    btnText: "Login",
                  ),
                  SizedBox(height: 18.h),
                  Center(
                    child: Text(
                      "Create Account",
                      style: theme.textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
