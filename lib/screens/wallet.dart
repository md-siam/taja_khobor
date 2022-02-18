import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';
import '../screens/screens.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);
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
              elevation: 0,
              title: Text(ScreenTitles.wallet),
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 5.0),
                  BalanceCard(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    height: MediaQuery.of(context).size.height / 4,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: historyContainerList.length,
                      itemBuilder: (ctx, i) {
                        return WalletHistoryContainer(id: i);
                      },
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Transaction History",
                          style: TextStyle(
                            color: Theme.of(context).buttonColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.timelapse,
                        color: Theme.of(context).buttonColor,
                      ),
                      Text(
                        "Last 24 hours",
                        style: TextStyle(
                          color: Theme.of(context).buttonColor,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 31,
                    //color: Theme.of(context).cardColor,
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Referral Credits                        ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .apply(fontWeightDelta: 2),
                            ),
                            Text(
                              "It takes around 24 hours",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "60 ₵r",
                              style: TextStyle(
                                color: Theme.of(context).buttonColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            RaisedButton(
                              color: lightBlue,
                              child: Text(
                                "View",
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(9.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        ReferralCreditsScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(height: 30),
                  Row(
                    children: <Widget>[
                      Flexible(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Transfer Credits                        ",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .apply(fontWeightDelta: 2),
                            ),
                            Text(
                              "It takes around 2 hours",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "1500 ₵r",
                              style: TextStyle(
                                color: Theme.of(context).buttonColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            RaisedButton(
                              color: lightBlue,
                              child: Text(
                                "View",
                                style: TextStyle(color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(9.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        TransferCreditsScreen(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
