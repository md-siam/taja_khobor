import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Jobs'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Colors.lightBlueAccent,
              Colors.blueAccent
            ]),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            color: blue,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25,
                  child: JobsCategoryMenu(),
                )
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
    );
  }
}
