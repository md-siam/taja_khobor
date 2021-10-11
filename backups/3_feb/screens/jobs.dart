import 'package:flutter/material.dart';
import '../models/models.dart';
import '../screens/screens.dart';
import '../widgets/widgets.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 11,
                  ),
                  Expanded(
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
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
