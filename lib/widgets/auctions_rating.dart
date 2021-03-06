import 'package:flutter/material.dart';

import '../controllers/controllers.dart';

class RatingWidget extends StatelessWidget {
  final int? id;

  const RatingWidget({Key? key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(
            Icons.star,
            color: Colors.orange,
          ),
          Text(
            "${auctionsList[id!]['rating']}",
            style: const TextStyle(color: Colors.orange),
          )
        ],
      ),
    );
  }
}
