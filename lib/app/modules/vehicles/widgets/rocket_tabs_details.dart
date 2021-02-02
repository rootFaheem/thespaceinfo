import 'package:flutter/material.dart';

class RocketTabsDetails extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<RocketTabsDetails>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 4, vsync: this);
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
              color: Color(0xffC4C4C4),
              child: SizedBox(height: 4.0, width: 74.0),
            ),
            TabBar(
              controller: _nestedTabController,
              indicatorColor: Theme.of(context).accentColor,
              labelColor: Theme.of(context).textTheme.bodyText1.color,
              unselectedLabelColor: Colors.white70,
              isScrollable: true,
              tabs: <Widget>[
                Tab(text: "Overview"),
                Tab(text: "Measurements"),
                Tab(text: "Stages"),
                Tab(text: "Engine Details"),
              ],
            ),
            Container(
              height: screenHeight,
              // margin: EdgeInsets.only(left: 16.0, right: 16.0),
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
                      child: Text('Overview goes here...'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).backgroundColor,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Theme.of(context).backgroundColor,
                    ),
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
