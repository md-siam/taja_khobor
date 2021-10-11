import 'package:flutter/material.dart';
import '../models/models.dart';

class AudioBookDetailsScreen extends StatelessWidget {
  final int id;

  const AudioBookDetailsScreen({Key key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
                Colors.lightBlueAccent,
                Colors.blueAccent
              ]),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff333333),
            ),
            iconSize: 30.0,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          title: Text(
            "Details",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xff333333),
              ),
              iconSize: 30.0,
              onPressed: () => print('Add to Favorites'),
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              image: AssetImage(booksList[id]['imgurl']),
                              height: 200,
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "${booksList[id]['name']}",
                                  style: Theme.of(context).textTheme.title,
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "Rating: ",
                                      style: TextStyle(color: grey),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                    ),
                                    Text(
                                      "${booksList[id]['rating']}",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        "Book Description",
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .apply(fontWeightDelta: 2),
                      ),
                      SizedBox(height: 7.0),
                      Text(
                        "${booksList[id]['desc']}",
                        style: Theme.of(context)
                            .textTheme
                            .body2
                            .apply(color: Colors.black),
                        textAlign: TextAlign.justify,
                      ),

                      SizedBox(height: 15.0),
                      Text(
                        "Screenshots",
                        style: Theme.of(context)
                            .textTheme
                            .headline
                            .apply(fontWeightDelta: 2),
                      ),
                      SizedBox(height: 7.0),
                      Container(
                        height: MediaQuery.of(context).size.height / 4,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: booksList[id]['imgs'].length,
                          itemBuilder: (ctx, imgId) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 9.0),
                              width: MediaQuery.of(context).size.width / 1.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image(
                                  image: AssetImage(booksList[id]['imgs'][imgId]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  color: blue,
                  child: Text(
                    "Buy This Book",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
    );
  }
}
