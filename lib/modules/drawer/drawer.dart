import 'package:ecommerce/modules/drawer/components/drawer_body.dart';
import 'package:ecommerce/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/size_extension.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer>
    with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Duration _duration = Duration(milliseconds: 500);
  Animation<double> scaleAnimation;
  bool isOpen = false;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: _duration);
    scaleAnimation = Tween(begin: 1.0, end: 0.8).animate(animationController);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          DrawerBody(
            onPressed: () {
              if (isOpen) {
                setState(() {
                  isOpen = false;
                  animationController.reverse();
                });
              }
            },
          ),
          AnimatedPositioned(
            top: isOpen ? size.height * 0.08 : 0.0,
            bottom: isOpen ? size.height * 0.08 : 0.0,
            left: isOpen ? size.width * 0.55.w : 0.0,
            right: isOpen ? size.width * -0.45.w : 0.0,
            duration: _duration,
            child: AbsorbPointer(
              absorbing: isOpen,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(isOpen ? 15 : 0.0),
                  child: Home(
                    onPressed: () {
                      setState(() {
                        isOpen = true;
                        animationController.forward();
                      });
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
