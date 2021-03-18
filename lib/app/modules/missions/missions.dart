import 'package:flutter/material.dart';

class MissionScreen extends StatefulWidget {
  static const routeName = "missions";
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<MissionScreen>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TabBar(
              controller: _nestedTabController,
              indicatorColor: Theme.of(context).accentColor,
              labelColor: Theme.of(context).textTheme.bodyText1.color,
              unselectedLabelColor: Colors.white70,
              isScrollable: false,
              tabs: <Widget>[
                Tab(text: "Upcoming"),
                Tab(text: "Recent"),
              ],
            ),
            Container(
              height: screenHeight * 0.85,
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: TabBarView(
                controller: _nestedTabController,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: SingleChildScrollView(
                      child: Text('upcoming goes here..'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).backgroundColor,
                    ),
                    child: Text('recent goes here..'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
