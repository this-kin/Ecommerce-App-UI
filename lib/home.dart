// import 'package:ecommerce/ui/cart_page.dart';
// import 'package:ecommerce/ui/favorite_page.dart';
// import 'package:ecommerce/ui/home_page.dart';
// import 'package:ecommerce/ui/profile_page.dart';
// import 'package:ecommerce/utils/theme.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {

//   PageController _pageController = PageController();
//   List<Widget> pages = [Home(), Favorite(), Profile(), Cart()];
//   void _onChanged(index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   onItemTapped(int selectedIndex) {
//     _pageController.jumpToPage(selectedIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         physics: NeverScrollableScrollPhysics(),
//         onPageChanged: _onChanged,
//         children: pages,
//       ),

//     );
//   }
// }
