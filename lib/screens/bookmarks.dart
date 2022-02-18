import 'package:flutter/material.dart';

import '../controllers/controllers.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class BookmarksScreen extends StatelessWidget {
  const BookmarksScreen({Key? key}) : super(key: key);
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
              title: Text(ScreenTitles.bookmarks),
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
                        child: BookmarksCategoryMenu(),
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
                            children:
                                business_news().map<Widget>((business_news) {
                              return _GridDemoPhotoItem(
                                  business_news: business_news);
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
        )
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
    required this.business_news,
  }) : super(key: key);

  final Bookmark business_news;

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
          image: AssetImage(business_news.imageUrl!),
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
          title: _GridTitleText(business_news.title),
        ),
      ),
      child: GestureDetector(
        child: image,
        onTap: () => {print(business_news.title)},
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
