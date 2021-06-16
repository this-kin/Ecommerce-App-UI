import 'package:ecommerce/widgets/bottom_nav.dart';
import 'package:ecommerce/widgets/tabbar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  final Function openDrawer;

  const Home({Key key, @required this.openDrawer}) : super(key: key);
  @override
  _HomeState createState() => _HomeState(this.openDrawer);
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;
  var screen = ScreenUtil();

  _HomeState(Function openDrawer);
  Widget build(BuildContext context) {
    @override
    var theme = Theme.of(context);
    var height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            220,
          ),
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu_rounded),
              onPressed: widget.openDrawer,
            ),
            elevation: 0,
            title: Container(
              height: screen.setHeight(45),
              width: screen.setWidth(267),
              decoration: BoxDecoration(
                  border: Border.all(color: theme.accentColor),
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    labelText: "Search",
                    labelStyle: TextStyle(fontFamily: "Raleway thin")),
              ),
            ),
            backgroundColor: Colors.transparent,
            flexibleSpace: SafeArea(
              child: Container(
                margin: const EdgeInsets.only(top: 60, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screen.setHeight(10),
                    ),
                    Container(
                      height: 80,
                      width: 243,
                      child: Text(
                        "Order online\ncollect in store",
                        style: TextStyle(fontSize: 34, fontFamily: "Raleway"),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Container(
                      child: TabBar(
                        isScrollable: true,
                        labelColor: theme.backgroundColor,
                        unselectedLabelColor: theme.accentColor,
                        labelStyle: newMethod(),
                        tabs: [
                          Tab(
                            text: "Best Buy",
                          ),
                          Tab(
                            text: "Amazon",
                          ),
                          Tab(
                            text: "Kohl's",
                          ),
                          Tab(
                            text: "Walmart",
                          ),
                          Tab(
                            text: "Target",
                          ),
                          Tab(
                            text: "PC Richard Son",
                          ),
                          Tab(
                            text: "Loews",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabbarView(),
        backgroundColor: Color(0xffF2F2F2),
        bottomNavigationBar:
            BottomNav(selectedIndex: selectedIndex, theme: theme),
      ),
    );
  }

  TextStyle newMethod() => TextStyle(
      fontWeight: FontWeight.w500,
      // color: Color(0xff9A9A9D),
      fontSize: screen.setSp(15));
}
