import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Bookmarks'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
              Colors.lightBlueAccent,
              Colors.blueAccent
            ]),
          ),
        ),
      ),
    );
  }
}
