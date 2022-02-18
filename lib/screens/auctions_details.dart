import 'package:flutter/material.dart';

import '../alerts/alerts.dart';
import '../controllers/controllers.dart';
import '../models/models.dart';

class AuctionDetailsScreen extends StatelessWidget {
  final int? id;

  const AuctionDetailsScreen({Key? key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
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
                            image: AssetImage(auctionsList[id!]['imgurl']),
                            height: 200,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "${auctionsList[id!]['name']}",
                                style: Theme.of(context).textTheme.headline1,
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
                                    "${auctionsList[id!]['rating']}",
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
                      "Description",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .apply(fontWeightDelta: 2),
                    ),
                    SizedBox(height: 7.0),
                    Text(
                      "${auctionsList[id!]['desc']}",
                      style: Theme.of(context).textTheme.bodyText2!.apply(),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Screenshots",
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .apply(fontWeightDelta: 2),
                    ),
                    SizedBox(height: 7.0),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: auctionsList[id!]['imgs'].length,
                        itemBuilder: (ctx, imgId) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 9.0),
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image(
                                image:
                                    AssetImage(auctionsList[id!]['imgs'][imgId]),
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
                  "Reserve a seat",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () => successAlert(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
