import 'package:flutter/material.dart';

typedef void IntCallback(int id);

class MyBottomNavigationBar extends StatelessWidget {
  final IntCallback onSonChanged;
  MyBottomNavigationBar({@required this.onSonChanged});

  final int _selectedIndex = 0;
  void _onItemTapped(int index) {
    // _selectedIndex = index;
    onSonChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      // type: BottomNavigationBarType.shifting,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Missions',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Mars',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Vehicle',
          backgroundColor: Theme.of(context).primaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'Company',
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      showUnselectedLabels: true,
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).textTheme.bodyText2.color,
      unselectedItemColor: Colors.white30,
    );
  }
}
