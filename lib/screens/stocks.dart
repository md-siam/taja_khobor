import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class StocksScreen extends StatefulWidget {
  const StocksScreen({Key? key}) : super(key: key);
  @override
  _StocksScreenState createState() => _StocksScreenState();
}

class _StocksScreenState extends State<StocksScreen> {
  double _offsetY = 100;
  ExpandedState _expandedState = ExpandedState.compact;

  double _calculateOffset(delta, context) {
    final maxHeight = MediaQuery.of(context).size.height - 100;
    final newOffset = _offsetY + (delta) * (-1);
    if (newOffset <= 100) {
      return 100;
    } else if (newOffset >= maxHeight) {
      return maxHeight;
    } else {
      return newOffset;
    }
  }

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
              title: Text(ScreenTitles.stocks),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.search,
                  ),
                  onPressed: () {
                    print('Search');
                  },
                ),
              ],
            ),
            drawer: displayMobileLayout
                ? const AppDrawer(
                    permanentlyDisplay: false,
                  )
                : null,
            body: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.black,
                  child: SafeArea(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height - 190,
                          child: StockList(stocks: Stock.getAll()),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: AnimatedContainer(
                    height: _offsetY,
                    duration: Duration(milliseconds: 1),
                    curve: Curves.easeInOut,
                    child: StocksNewsList(
                      expandedState: this._expandedState,
                      onPanUpdate: (dragDetails) {
                        setState(
                          () {
                            _offsetY = _calculateOffset(
                                dragDetails.primaryDelta, context);
                          },
                        );
                      },
                      onHeaderTapped: () {
                        debugPrint("onHeaderTapped");
                        setState(
                          () {
                            this._expandedState =
                                this._expandedState == ExpandedState.compact
                                    ? ExpandedState.expanded
                                    : ExpandedState.compact;
                          },
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
