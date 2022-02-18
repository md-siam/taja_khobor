import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../alerts/alerts.dart';
import '../controllers/controllers.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class AuctionsScreen extends StatelessWidget {
  const AuctionsScreen({Key? key}) : super(key: key);
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
              title: Text(ScreenTitles.auctions),
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
                        child: AuctionsCategoryMenu(),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: MasonryGridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    itemCount: auctionsList.length,
                    itemBuilder: (ctx, id) {
                      return AuctionsContainer(id: id);
                    },
                    // staggeredTileBuilder: (int index) {
                    //   return Tile(2, index.isEven ? 3 : 2);
                    // },
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
