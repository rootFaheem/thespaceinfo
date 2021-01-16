import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: ListTile(
                leading: Icon(
                  Icons.add_circle_outline_outlined,
                  size: 56.0,
                ),
                title: Text(
                  'The SpaceInfo',
                  style: TextStyle(fontSize: 26.0),
                ),
                subtitle: Container(
                  child: Text(
                    'Occupy Mars',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            ListTile(
              leading: Icon(Icons.info_outlined),
              title: Text(
                'About Us',
                textScaleFactor: 1.2,
              ),
              subtitle: Text('Know about our app & the author'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              tileColor: Theme.of(context).primaryColor,
            ),
            ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text(
                'Contact Us',
                textScaleFactor: 1.2,
              ),
              subtitle: Text('Report any bug & help us improve'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              tileColor: Theme.of(context).primaryColor,
            ),
            ListTile(
              leading: Icon(Icons.group_outlined),
              title: Text(
                'Invite',
                textScaleFactor: 1.2,
              ),
              subtitle: Text('Invite your friends'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              tileColor: Theme.of(context).primaryColor,
            ),
            ListTile(
              // leading: Icon(Icons.group_outlined)
              title: Container(
                margin: EdgeInsets.only(top: 300.0, left: 20.0),
                child: Text(
                  'APP Version 0.0.1',
                  style: TextStyle(
                    color: Theme.of(context).textTheme.bodyText2.color,
                  ),
                ),
              ),

              // subtitle: Text('Invite your friends'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
              tileColor: Theme.of(context).primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
