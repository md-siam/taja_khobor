import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taja Khobor',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        //canvasColor:Colors.blue, //Background of profile photo
        accentColor: Colors.white,  //Jobs list view
        backgroundColor: Colors.white24,  //background of TAJA logo
        secondaryHeaderColor: Colors.blue, //secondary header for Jobs and Audiobooks
        cardColor: Colors.black, //Icons colors
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        //canvasColor:Colors.blue,
        accentColor: Colors.black12,
        backgroundColor: Colors.black26,
        secondaryHeaderColor: Colors.white10,
        cardColor: Colors.tealAccent,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/home': (context) => HomeScreen(),
        '/bookmarks': (context) => BookmarksScreen(),
        '/profile': (context) => ProfileScreen(),
        '/jobs': (context) => JobsScreen(),
        '/audiobooks': (context) => AudiobooksScreen(),
        '/languages': (context) => LanguagesScreen(),
        '/settings': (context) => SettingsScreen(),
        '/help': (context) => HelpScreen(),
      },
    );
  }
}
