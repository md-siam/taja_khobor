import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';

class ContentScroll extends StatelessWidget {
  final List<String>? imageUrl;
  final String? title;
  final double? imageHeight;
  final double? imageWidth;

  ContentScroll({
    this.imageUrl,
    this.title,
    this.imageHeight,
    this.imageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title!,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () => print('View $title'),
                child: Icon(
                  Icons.arrow_forward,
                  color: Theme.of(context).buttonColor,
                  size: 30.0,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: imageHeight,
          child: ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            scrollDirection: Axis.horizontal,
            itemCount: imageUrl!.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  if (title == "Trending") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NewsScreen(news: trending_news[index]),
                      ),
                    );
                  } else if (title == "Recent") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NewsScreen(news: recent_news[index]),
                      ),
                    );
                  } else if (title == "Technology") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NewsScreen(news: technology[index]),
                      ),
                    );
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  width: imageWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Image(
                            image: AssetImage(imageUrl![index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(9.0),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.black26, Colors.black],
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                if (title == "Trending")
                                  (Text(
                                    '${trending_news[index].title}',
                                    //"Test",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ))
                                else if (title == "Recent")
                                  (Text(
                                    '${recent_news[index].title}',
                                    //"Test",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  ))
                                else if (title == "Technology")
                                  (Text(
                                    '${technology[index].title}',
                                    //"Test",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                  )),
                                SizedBox(height: 5.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
