import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './models/models.dart';
import './screens/screens.dart';
import './widgets/widgets.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taja Khobor',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white24, //background of TAJA logo
        secondaryHeaderColor:
            Colors.blue, //secondary header for Jobs and Audiobooks
        cardColor: Colors.white, //Jobs list view
        buttonColor: Colors.black,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Colors.black26,
        secondaryHeaderColor: Colors.white10,
        cardColor: Colors.black12,
        buttonColor: Colors.tealAccent,
      ),
      initialRoute: RouteNames.splash,
      navigatorObservers: [AppRouteObserver()],
      routes: {
        RouteNames.splash: (_) => const SplashScreen(),
        RouteNames.home: (_) => const HomeScreen(),
        RouteNames.bookmarks: (_) => const BookmarksScreen(),
        RouteNames.covid19: (_) => const COVID19Screen(),
        RouteNames.LIVE_sports: (_) => const LIVE_SportsScreen(),
        RouteNames.stocks: (_) => const StocksScreen(),
        RouteNames.resume: (_) => const ResumeScreen(),
        RouteNames.jobs: (_) => const JobsScreen(),
        RouteNames.auctions: (_) => const AuctionsScreen(),
        RouteNames.sale: (_) => const SaleScreen(),
        RouteNames.traffic_alert: (_) => const TrafficAlertScreen(),
        RouteNames.bhejabilai: (_) => const BhejaBilaiScreen(),
        RouteNames.puzzles: (_) => const GameScreen(),
        RouteNames.wallet: (_) => const WalletScreen(),
        RouteNames.settings: (_) => const SettingsScreen(),
        RouteNames.help: (_) => const HelpScreen()
      },
    );
  }
}
