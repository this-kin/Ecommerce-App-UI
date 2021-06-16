import 'package:ecommerce/ui/drawer/components/drawer_body.dart';
import 'package:ecommerce/ui/home/home_page.dart';
import 'package:flutter/material.dart';

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
    // TODO: implement initState
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
          DrawerBody(),
          AnimatedPositioned(
              top: 0,
              bottom: 0,
              left: isOpen ? size.width * 0.55 : 0.0,
              right: isOpen ? size.width * -0.45 : 0.0,
              duration: _duration,
              child: ScaleTransition(
                  scale: scaleAnimation,
                  child: GestureDetector(
                    onTap: () {
                      if (isOpen) {
                        setState(() {
                          isOpen = false;
                          animationController.reverse();
                        });
                      }
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(isOpen ? 15 : 0.0),
                      child: Home(
                        openDrawer: () {
                          setState(() {
                            isOpen = true;
                            animationController.forward();
                          });
                        },
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
