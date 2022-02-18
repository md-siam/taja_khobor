import 'package:flutter/material.dart';

import '../alerts/alerts.dart';
import '../controllers/controllers.dart';
import '../models/models.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({Key? key}) : super(key: key);
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
              title: const Text(ScreenTitles.jobs),
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
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
                  padding: const EdgeInsets.all(15),
                  color: Theme.of(context).secondaryHeaderColor,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 25,
                        child: JobsCategoryMenu(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: ListView.builder(
                      itemCount: jobList.length,
                      itemBuilder: (ctx, i) {
                        return JobContainer(
                          description: jobList[i].description,
                          iconUrl: jobList[i].iconUrl,
                          location: jobList[i].location,
                          salary: jobList[i].salary,
                          title: jobList[i].title,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => JobsDetailsScreen(id: i),
                            ),
                          ),
                        );
                      },
                    ),
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
