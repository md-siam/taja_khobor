import 'package:flutter/material.dart';

enum ExpandedState { compact, expanded }

class StocksNewsList extends StatefulWidget {
  final Function? onHeaderTapped;
  final Function(DragUpdateDetails)? onPanUpdate;
  ExpandedState? expandedState = ExpandedState.compact;

  StocksNewsList({this.onHeaderTapped, this.expandedState, this.onPanUpdate});

  @override
  _StocksNewsListState createState() => _StocksNewsListState();
}

class _StocksNewsListState extends State<StocksNewsList> {
  final _newsImages = [
    "img1.png",
    "img2.png",
    "img3.png",
    "img4.png",
    "img1.png",
    "img2.png",
    "img3.png",
    "img4.png",
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: this.widget.onPanUpdate,
      onTap: this.widget.onHeaderTapped as void Function()?,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
          ),
        ),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: 800,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Business News",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "From Taja Khobor",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.all(10),
                    title: Wrap(
                      children: <Widget>[
                        Text(
                          "DHAKA STOCK EXCHANGE",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Chemical Fire in Puran Dhaka",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    trailing: Image.asset(
                        "assets/images/stocks/${_newsImages[index]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
