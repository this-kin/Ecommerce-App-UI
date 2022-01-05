import 'package:ecommerce/modules/cart/cart.dart';
import 'package:ecommerce/modules/favorite/favorite.dart';
import 'package:ecommerce/modules/home/home.dart';
import 'package:ecommerce/modules/profile/profile.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  // list of pages
  List<Widget> _pages = [Home(), Favorite(), Profile(), Cart()];

  // tracks current page
  int _currentIndex = 0;

  // controls pages
  final PageController _controller = PageController();

  //
  void itemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void onPageChanged(_currentIndex) {
    _controller.animateToPage(
      _currentIndex,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    //
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: PageView(
        children: _pages,
        onPageChanged: itemTapped,
        physics: BouncingScrollPhysics(),
        controller: _controller,
      ),
      bottomNavigationBar: Theme(
        data: theme.copyWith(canvasColor: theme.backgroundColor),
        child: BottomNavigationBar(
            backgroundColor: theme.backgroundColor,
            elevation: 0,
            enableFeedback: true,
            currentIndex: _currentIndex,
            selectedItemColor: theme.primaryColor,
            unselectedItemColor: theme.accentColor,
            onTap: onPageChanged,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_sharp), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_sharp), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_outlined), label: ""),
            ]),
      ),
    );
  }
}
