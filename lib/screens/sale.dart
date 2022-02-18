import 'package:flutter/material.dart';

import '../alerts/alerts.dart';
import '../controllers/controllers.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class SaleScreen extends StatelessWidget {
  const SaleScreen({Key? key}) : super(key: key);
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
              title: Text(ScreenTitles.sale),
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
                        child: SaleCategoryMenu(),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                            padding: const EdgeInsets.all(8),
                            childAspectRatio: 1,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            children: sale_news().map<Widget>((sale_news) {
                              return _GridDemoPhotoItem(sale_news: sale_news);
                            }).toList(),
                          ),
                        ),
                      ),
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

class _GridTitleText extends StatelessWidget {
  const _GridTitleText(this.text);
  final String? text;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _GridDemoPhotoItem extends StatelessWidget {
  _GridDemoPhotoItem({
    Key? key,
    required this.sale_news,
  }) : super(key: key);

  final Sale sale_news;

  @override
  Widget build(BuildContext context) {
    final Widget image = Material(
      child: Container(
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.black54,
              blurRadius: 6.0,
              offset: new Offset(0.0, 4.0),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Image(
          image: AssetImage(sale_news.imageUrl!),
          fit: BoxFit.cover,
        ),
      ),
    );

    return GridTile(
      footer: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: GridTileBar(
          backgroundColor: Colors.black45,
          title: _GridTitleText(sale_news.title),
        ),
      ),
      child: GestureDetector(
        child: image,
        onTap: () => {print(sale_news.title)},
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (_) => NewsScreen(news: business_news[index]),
        //   ),
        // ),
      ),
    );
  }
}
