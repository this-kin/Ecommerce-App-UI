import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  final Function onPressed;

  const Home({Key key, this.onPressed}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: widget.onPressed,
          icon: Icon(
            Icons.sort_rounded,
            color: theme.accentColor,
          ),
        ),
        title: Searchbar(),
      ),
      backgroundColor: theme.backgroundColor,
      body: Container(
        color: theme.backgroundColor,
        padding: EdgeInsets.only(left: 25.w, top: 40.h),
        child: Column(
          children: [
            Text(
              "Order online\ncollect in store",
              style: theme.textTheme.headline1.copyWith(
                color: theme.accentColor,
                fontSize: 34.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Searchbar() {
  return Container(
    height: 55.h,
    width: 250.w,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.sp),
      border: Border.all(color: Colors.black12, width: 1.5),
    ),
    alignment: Alignment.center,
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Colors.black.withOpacity(0.5),
        ),
        hintText: "Search",
        hintStyle: GoogleFonts.raleway(
            textStyle: TextStyle(
          color: Colors.black,
          fontSize: 17.sp,
        )),
        border: InputBorder.none,
      ),
    ),
  );
}
