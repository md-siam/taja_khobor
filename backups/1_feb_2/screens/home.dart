import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  _newsSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 270.0,
            width: Curves.easeInOut.transform(value) * 400.0,
            child: widget,
          ),
        );
      },
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => NewsScreen(news: news[index]),
          ),
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 4.0),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Center(
                  child: Hero(
                    tag: news[index].imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage(news[index].imageUrl),
                        height: 220.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 40.0,
              child: Container(
                width: 250.0,
                child: Text(
                  news[index].title.toUpperCase(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: <Color>[Colors.lightBlueAccent, Colors.blueAccent]),
              ),
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
            CustomListTile(
              Icons.home,
              'Home',
              () => Navigator.of(context).pushNamed('/'),
            ),
            CustomListTile(
              Icons.bookmark,
              'Bookmarks',
              () => Navigator.of(context).pushNamed('/bookmarks'),
            ),
            CustomListTile(
              Icons.person,
              'Profile',
              () => Navigator.of(context).pushNamed('/profile'),
            ),
            CustomListTile(
              Icons.group,
              'Jobs',
              () => Navigator.of(context).pushNamed('/jobs'),
            ),
            CustomListTile(
              Icons.speaker,
              'Audiobooks',
              () => Navigator.of(context).pushNamed('/audiobooks'),
            ),
            CustomListTile(
              Icons.language,
              'Languages',
              () => Navigator.of(context).pushNamed('/languages'),
            ),
            CustomListTile(
              Icons.settings,
              'Settings',
              () => Navigator.of(context).pushNamed('/settings'),
            ),
            CustomListTile(
              Icons.help,
              'Help',
              () => Navigator.of(context).pushNamed('/help'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Image(
          image: AssetImage('assets/images/main/taja_logo.png'),
        ),
        /*
        leading: IconButton(
          padding: EdgeInsets.only(left: 30.0),
          onPressed: () => print('Menu'),
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.black,
        ), */
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: 25.0),
            onPressed: () => print('Search'),
            icon: Icon(Icons.search),
            iconSize: 25.0,
            color: Colors.black,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 280.0,
            width: double.infinity,
            child: PageView.builder(
              controller: _pageController,
              itemCount: news.length,
              itemBuilder: (BuildContext context, int index) {
                return _newsSelector(index);
              },
            ),
          ),
          Container(
            height: 90.0,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              scrollDirection: Axis.horizontal,
              itemCount: labels.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(10.0),
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF00DDD2),
                        Color(0xFF00A6F9),
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF00A6F9),
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      labels[index].toUpperCase(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.8,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          ContentScroll(
            images: trending,
            title: 'Trending',
            imageHeight: 250.0,
            imageWidth: 150.0,
          ),
          SizedBox(height: 10.0),
          ContentScroll(
            images: popular,
            title: 'Popular',
            imageHeight: 250.0,
            imageWidth: 150.0,
          ),
        ],
      ),
    );
  }
}
