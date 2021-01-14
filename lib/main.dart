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
        scaffoldBackgroundColor: Color(0xff262E41),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World!',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
