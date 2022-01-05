import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerBody extends StatefulWidget {
  final Function onPressed;

  const DrawerBody({Key key, this.onPressed}) : super(key: key);

  @override
  _DrawerBodyState createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.fromLTRB(30.w, 50.h, 0, 90.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: widget.onPressed,
                icon: Icon(Icons.close),
              ),
              SizedBox(height: 40.h),
              DrawerTile(
                icon: Icons.person_outline_rounded,
                onPressed: () {
                  // navigate to profile
                },
                title: "Profile",
              ),
              DrawerTile(
                icon: Icons.shopping_cart_outlined,
                onPressed: () {
                  // navigate to cart
                },
                title: "My Orders",
              ),
              DrawerTile(
                icon: Icons.favorite_border_rounded,
                onPressed: () {
                  // navigate to favorites
                },
                title: "Favorites",
              ),
              DrawerTile(
                icon: Icons.shopping_bag_outlined,
                onPressed: () {
                  // navigate to delivery
                },
                title: "Delivery",
              ),
              DrawerTile(
                icon: Icons.settings_sharp,
                onPressed: () {
                  // navigate to settings
                },
                title: "Settings",
              ),
              SizedBox(height: 100.h),
              DrawerTile(
                icon: Icons.logout_outlined,
                onPressed: () {
                  //logout
                },
                title: "Sign out",
              )
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget DrawerTile({IconData icon, Function onPressed, String title}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 80.h,
        width: 150.w,
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 25.sp,
            ),
            SizedBox(width: 13.w),
            Text(
              title,
              style: GoogleFonts.raleway(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  //TODO
  // Widget dividerWidget() {
  //   return Container(
  //     height: 1.h,
  //     width: 132.w,
  //   );
  // }
}
