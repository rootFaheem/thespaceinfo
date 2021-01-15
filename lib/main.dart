import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TheSpaceInfo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xff0C0C1B),
        accentColor: Color(0xff16A7F6),
        scaffoldBackgroundColor: Color(0xff0C0C1B),
        bottomAppBarColor: Color(0xff0C0C1B),
        disabledColor: Color(0xffDA4A55),
        toggleableActiveColor: Color(0xff33CA4D),
        textTheme: TextTheme(bodyText2: TextStyle(color: Color(0xffFFFFFF))),
// (new) ThemeData ThemeData({Brightness brightness,
// VisualDensity visualDensity, MaterialColor primarySwatch,
// Color primaryColor, Brightness primaryColorBrightness, Color primaryColorLight,
// Color primaryColorDark, Color accentColor, Brightness accentColorBrightness,
// Color canvasColor, Color shadowColor, Color scaffoldBackgroundColor,
// Color bottomAppBarColor, Color cardColor, Color dividerColor,
// Color focusColor, Color hoverColor, Color highlightColor, Color splashColor,
//  InteractiveInkFeatureFactory splashFactory, Color selectedRowColor,
// Color unselectedWidgetColor, Color disabledColor, Color buttonColor,
//  ButtonThemeData buttonTheme, ToggleButtonsThemeData toggleButtonsTheme,
// Color secondaryHeaderColor, Color textSelectionColor, Color cursorColor,
// Color textSelectionHandleColor, Color backgroundColor, Color dialogBackgroundColor,
// Color indicatorColor, Color hintColor, Color errorColor, Color toggleableActiveColor,
//  String fontFamily, TextTheme textTheme, TextTheme primaryTextTheme,
// TextTheme accentTextTheme, InputDecorationTheme inputDecorationTheme,
// IconThemeData iconTheme, IconThemeData primaryIconTheme,
// IconThemeData accentIconTheme, SliderThemeData sliderTheme,
// TabBarTheme tabBarTheme, TooltipThemeData tooltipTheme,
//  CardTheme cardTheme, ChipThemeData chipTheme, TargetPlatform platform,
//  MaterialTapTargetSize materialTapTargetSize, bool applyElevationOverlayColor,
//  PageTransitionsTheme pageTransitionsTheme, AppBarTheme appBarTheme,
// BottomAppBarTheme bottomAppBarTheme, ColorScheme colorScheme,
// DialogTheme dialogTheme, FloatingActionButtonThemeData floatingActionButtonTheme,
// NavigationRailThemeData navigationRailTheme, Typography typography,
// CupertinoThemeData cupertinoOverrideTheme, SnackBarThemeData snackBarTheme,
//  BottomSheetThemeData bottomSheetTheme, PopupMenuThemeData popupMenuTheme,
// MaterialBannerThemeData bannerTheme, DividerThemeData dividerTheme,
// ButtonBarThemeData buttonBarTheme, BottomNavigationBarThemeData bottomNavigationBarTheme,
// TimePickerThemeData timePickerTheme, TextButtonThemeData textButtonTheme,
// ElevatedButtonThemeData elevatedButtonTheme,
// OutlinedButtonThemeData outlinedButtonTheme, TextSelectionThemeData textSelectionTheme,
// DataTableThemeData dataTableTheme, bool fixTextFieldOutlineLabel,
// bool useTextSelectionTheme})
      ),
      home: MyHomePage(title: 'TheSpaceInfo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Mission',
      style: optionStyle,
    ),
    Text(
      'Index 1: Mars',
      style: optionStyle,
    ),
    Text(
      'Index 2: Vehicle',
      style: optionStyle,
    ),
    Text(
      'Index 3: Company',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Missions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Mars',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Vehicle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Company',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
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
                    textScaleFactor: 1.6,
                  ),
                  subtitle: Text('Occupy Mars'),
                  onTap: () {
                    // Update the state of the app.
                    // ...
                  },
                ),
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
              ),
            ],
          ),
        ));
  }
}
