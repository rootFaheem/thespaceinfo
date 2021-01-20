import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // bottom: TabBar(
      //   tabs: [
      //     Tab(icon: Icon(Icons.directions_car)),
      //     Tab(icon: Icon(Icons.directions_transit)),
      //     Tab(icon: Icon(Icons.directions_bike)),
      //   ],
      // ),
      title: Text(title),
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight);
}
