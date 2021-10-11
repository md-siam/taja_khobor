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
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
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
