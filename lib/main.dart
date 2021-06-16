import 'package:ecommerce/ui/splash/splash_screen.dart';
import 'package:ecommerce/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        allowFontScaling: false,
        designSize: Size(414, 896),
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeData,
            home: Splash(),
          );
        });
  }
}
