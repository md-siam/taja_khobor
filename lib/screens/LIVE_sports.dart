import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class LIVE_SportsScreen extends StatelessWidget {
  const LIVE_SportsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var titleTextStyle = TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
    var teamNameTextStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    );
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
              title: Text(ScreenTitles.LIVE_sports),
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
                        child: SportsCategoryMenu(),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16.0),
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      Card(
                        color: Theme.of(context).cardColor,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                backgroundImage: ExactAssetImage(
                                    "assets/images/LIVE_Sports/flags/bangladesh.png"),
                              ),
                              Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    "Bangladesh",
                                    style: teamNameTextStyle,
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    "329/6",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, left: 20.0, right: 20.0),
                                child: Text(
                                  ":",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Pakistan",
                                    style: teamNameTextStyle,
                                  ),
                                  const SizedBox(height: 5.0),
                                  Text(
                                    "250/10",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              CircleAvatar(
                                backgroundImage: ExactAssetImage(
                                    "assets/images/LIVE_Sports/flags/pakistan.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      Card(
                        color: Theme.of(context).cardColor,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Container(
                                  height: 200.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                      image: DecorationImage(
                                        image: ExactAssetImage(
                                            "assets/images/LIVE_Sports/Mushfiqur0.jpg"),
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "Bangladesh 329 for 6, beat Pakistan by 79 runs",
                                    style: titleTextStyle,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        "Today, 9:24 PM",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        "Dhaka | Bangladesh",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20.0),
                              ],
                            ),
                            Positioned(
                              top: 190,
                              left: 20.0,
                              child: Container(
                                color: Colors.green,
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  "LIVE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Divider(),
                      const SizedBox(height: 10.0),
                      ListTile(
                        title: Text(
                          "Mushfiqur Rahim's fourth ODI century",
                          style: titleTextStyle,
                        ),
                        subtitle: Text("Today, 7:02 PM | Dhaka"),
                        trailing: Container(
                          width: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    "assets/images/LIVE_Sports/Mushfiqur1.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      ListTile(
                        title: Text(
                          "Tamim Iqbal's 132 against Pakistan",
                          style: titleTextStyle,
                        ),
                        subtitle: Text("Today, 7:02 PM | Dhaka"),
                        trailing: Container(
                          width: 80.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    "assets/images/LIVE_Sports/Tamim.jpg"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
