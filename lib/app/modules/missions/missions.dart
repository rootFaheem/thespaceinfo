import 'package:flutter/material.dart';

class MissionScreen extends StatelessWidget {
  static const routeName = "missions";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: TabBar(
              tabs: [
                Tab(text: 'Upcoming'),
                Tab(text: 'Recent'),
              ],
            ),
            // title: Text('Tabs Demo'),
          ),
          body: TabBarView(
            children: [
              Container(child: Text('Upcoming')),
              Container(child: Text('Recent ')),
            ],
          ),
        ),
      ),
    );
  }
}
