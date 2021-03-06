import 'package:flutter/material.dart';

import '../widgets/mars_funfacts.dart';
import '../widgets/mars_gallery.dart';
import '../widgets/mars_overview.dart';
import '../widgets/mars_perseverance_rover.dart';

class Mars extends StatefulWidget {
  static const routeName = "mars";

  @override
  _MarsState createState() => _MarsState();
}

class _MarsState extends State<Mars> with TickerProviderStateMixin {
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
      child: Column(
        children: [
          Container(
            height: 287.0,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mars/mars_background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 24.0, bottom: 8.0),
                  child: Text(
                    'MARS',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8.0),
                  child: Text('The Red Planet'),
                ),
                Container(
                  child: Image.asset('assets/images/mars/mars.png'),
                ),
              ],
            ),
          ),
          Container(
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
                  indicatorWeight: 2.0,
                  tabs: <Widget>[
                    Tab(text: "Overview"),
                    Tab(text: "Fun Facts"),
                    Tab(text: "Perseverance Rover"),
                    Tab(text: "Gallery"),
                  ],
                ),
                Container(
                  height: screenHeight * 0.50,
                  margin: EdgeInsets.only(left: 12.0, right: 12.0, top: 16.0),
                  child: TabBarView(
                    controller: _nestedTabController,
                    children: <Widget>[
                      MarsOverview(),
                      MarsFunFact(),
                      MarsPerseveranceRover(),
                      MarsGallery(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
