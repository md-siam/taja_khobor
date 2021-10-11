import 'package:flutter/material.dart';

class BookmarksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).cardColor),
        title: Text('Bookmarks'),
      ),
    );
  }
}
