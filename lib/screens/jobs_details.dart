import 'package:flutter/material.dart';

import '../alerts/alerts.dart';
import '../controllers/controllers.dart';

class JobsDetailsScreen extends StatelessWidget {
  final int id;

  const JobsDetailsScreen({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            //color: Theme.of(context).cardColor,
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
              //color: Theme.of(context).cardColor,
            ),
            iconSize: 30.0,
            onPressed: () => print('Add to Favorites'),
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Image(
              image: AssetImage('assets/images/jobs/backimage.png'),
              fit: BoxFit.cover,
              color: Colors.black38,
              colorBlendMode: BlendMode.darken,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: (MediaQuery.of(context).size.height) / 2,
            child: Container(
              padding: const EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${jobList[id].title}",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Text(
                      "${jobList[id].location}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .apply(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Overview",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      "${jobList[id].description}",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .apply(color: Colors.grey),
                      maxLines: 3,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Workspace",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: 130,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: jobList[id].photos!.length,
                        itemBuilder: (ctx, i) {
                          return Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage("${jobList[id].photos![i]}"),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.height * .7,
                      height: 45,
                      child: RaisedButton(
                        child: Text(
                          "Submit your CV",
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .apply(color: Colors.white),
                        ),
                        color: Colors.blue,
                        onPressed: () => successAlert(context),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
