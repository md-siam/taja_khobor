import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class AudiobooksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Theme.of(context).cardColor),
          title: Text('Audiobooks'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              color: Theme.of(context).secondaryHeaderColor,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 25,
                    child: AudiobooksCategoryMenu(),
                  )
                ],
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                primary: false,
                crossAxisCount: 4,
                itemCount: booksList.length,
                itemBuilder: (ctx, id) {
                  return BooksContainer(id: id);
                },
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(2, index.isEven ? 3 : 2);
                },
              ),
            )
          ],
        ),
    );
  }
}


