import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var screen = ScreenUtil();
    var theme = Theme.of(context);
    //build widgets
    ListTile buildTile(
        {ScreenUtil screen,
        String btnText,
        IconData icon,
        Function onPressed}) {
      return ListTile(
        onTap: onPressed,
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          btnText,
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Raleway thin",
              fontWeight: FontWeight.bold,
              fontSize: screen.setSp(17)),
        ),
      );
    }

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(color: theme.backgroundColor),
        padding: const EdgeInsets.fromLTRB(20, 151, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTile(
                screen: screen, btnText: "Profile", icon: Icons.person_outline),
            buildTile(
                screen: screen,
                btnText: "My orders",
                icon: Icons.shopping_cart_outlined),
            buildTile(
                screen: screen, btnText: "Favorites", icon: Icons.favorite),
            buildTile(
                screen: screen,
                btnText: "Delivery",
                icon: Icons.shopping_bag_outlined),
            buildTile(
                screen: screen, btnText: "Settings", icon: Icons.settings),
            SizedBox(
              height: screen.setHeight(180),
            ),
            buildTile(
                screen: screen,
                icon: Icons.exit_to_app_rounded,
                btnText: "Sign out")
          ],
        ),
      ),
    );
  }
}
