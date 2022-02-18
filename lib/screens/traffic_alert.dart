import 'package:flutter/material.dart';
import '../alerts/alerts.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class TrafficAlertScreen extends StatefulWidget {
  const TrafficAlertScreen({Key? key}) : super(key: key);
  @override
  _TrafficAlertScreen createState() => _TrafficAlertScreen();
}

class _TrafficAlertScreen extends State<TrafficAlertScreen> {
  @override
  Widget build(BuildContext context) {
    final bool displayMobileLayout = MediaQuery.of(context).size.width < 600;
    return Row(
      children: [
        if (!displayMobileLayout)
          const AppDrawer(
            permanentlyDisplay: true,
          ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              // when the app isn't displaying the mobile version of app, hide the menu button that is used to open the navigation drawer
              automaticallyImplyLeading: displayMobileLayout,
              iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
              title: Text(ScreenTitles.traffic_alert),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.add,
                    size: 28,
                  ),
                  onPressed: () => loginAlert(context),
                ),
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15),
                  color: Theme.of(context).secondaryHeaderColor,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                        child: TrafficAlertCategoryMenu(),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                      ),
                      TrafficAlertContainer(0),
                      TrafficAlertContainer(1),
                      TrafficAlertContainer(2),
                      TrafficAlertContainer(3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
