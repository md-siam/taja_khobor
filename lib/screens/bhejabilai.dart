import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class BhejaBilaiScreen extends StatelessWidget {
  const BhejaBilaiScreen({Key? key}) : super(key: key);
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
              title: Text(ScreenTitles.bhejabilai),
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
              permanentlyDisplay: false,
            )
                : null,
            body: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 250),
                  child: Text("                   No information available.",
                      style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
