import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

//custom drawer for iOS device only
class AppDrawer extends StatefulWidget {
  const AppDrawer({required this.permanentlyDisplay, Key? key})
      : super(key: key);

  final bool permanentlyDisplay;

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> with RouteAware {
  String? _selectedRoute;
  late AppRouteObserver _routeObserver;
  @override
  void initState() {
    super.initState();
    _routeObserver = AppRouteObserver();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _routeObserver.subscribe(this, ModalRoute.of(context) as PageRoute<dynamic>);
  }

  @override
  void dispose() {
    _routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPush() {
    _updateSelectedRoute();
  }

  @override
  void didPop() {
    _updateSelectedRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).secondaryHeaderColor,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 10,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/images/main/mdsiam.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Text(
                    'Md. Siam',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  Text(
                    'Student',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 245,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: const Icon(FontAwesomeIcons.home),
                  title: const Text(
                    ScreenTitles.home,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.home);
                  },

                  selected: _selectedRoute == RouteNames.home,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.solidBookmark),
                  title: const Text(
                    ScreenTitles.bookmarks,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.bookmarks);
                  },
                  selected: _selectedRoute == RouteNames.bookmarks,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.virus),
                  title: const Text(
                    ScreenTitles.covid19,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.covid19);
                  },
                  selected: _selectedRoute == RouteNames.covid19,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.satelliteDish),
                  title: const Text(
                    ScreenTitles.LIVE_sports,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.LIVE_sports);
                  },
                  selected: _selectedRoute == RouteNames.LIVE_sports,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.chartLine),
                  title: const Text(
                    ScreenTitles.stocks,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.stocks);
                  },
                  selected: _selectedRoute == RouteNames.stocks,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.userEdit),
                  title: const Text(
                    ScreenTitles.resume,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.resume);
                  },
                  selected: _selectedRoute == RouteNames.resume,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.handshake),
                  title: const Text(
                    ScreenTitles.jobs,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.jobs);
                  },
                  selected: _selectedRoute == RouteNames.jobs,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.gavel),
                  title: const Text(
                    ScreenTitles.auctions,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.auctions);
                  },
                  selected: _selectedRoute == RouteNames.auctions,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.tag),
                  title: const Text(
                    ScreenTitles.sale,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.sale);
                  },
                  selected: _selectedRoute == RouteNames.sale,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.trafficLight),
                  title: const Text(
                    ScreenTitles.traffic_alert,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.traffic_alert);
                  },
                  selected: _selectedRoute == RouteNames.traffic_alert,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.cat),
                  title: const Text(
                    ScreenTitles.bhejabilai,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.bhejabilai);
                  },
                  selected: _selectedRoute == RouteNames.bhejabilai,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.puzzlePiece),
                  title: const Text(
                    ScreenTitles.puzzles,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.puzzles);
                  },
                  selected: _selectedRoute == RouteNames.puzzles,
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.wallet),
                  title: const Text(
                    ScreenTitles.wallet,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.wallet);
                  },
                  selected: _selectedRoute == RouteNames.wallet,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.cog),
                  title: const Text(
                    ScreenTitles.settings,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.settings);
                  },
                  selected: _selectedRoute == RouteNames.settings,
                ),
                ListTile(
                  leading: const Icon(FontAwesomeIcons.weixin),
                  title: const Text(
                    ScreenTitles.help,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  trailing: const Icon(Icons.arrow_right),
                  onTap: () async {
                    await _navigateTo(context, RouteNames.help);
                  },
                  selected: _selectedRoute == RouteNames.help,
                ),
              ],
            ),
          ),
          Text(
            'Version: 1.0.0          ',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
            ),
          ),
          if (widget.permanentlyDisplay)
            const VerticalDivider(
              width: 1,
            ),
        ],
      ),
    );
  }

  /// Closes the drawer if applicable (which is only when it's not been displayed permanently) and navigates to the specified route
  /// In a mobile layout, the a modal drawer is used so we need to explicitly close it when the user selects a page to display
  Future<void> _navigateTo(BuildContext context, String routeName) async {
    if (widget.permanentlyDisplay) {
      Navigator.pop(context);
    }
    await Navigator.pushNamed(context, routeName);
  }

  void _updateSelectedRoute() {
    setState(() {
      _selectedRoute = ModalRoute.of(context)!.settings.name;
    });
  }
}