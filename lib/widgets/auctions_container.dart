import 'package:flutter/material.dart';

import '../controllers/controllers.dart';
import '../screens/screens.dart';

class AuctionsContainer extends StatelessWidget {
  final int? id;

  const AuctionsContainer({Key? key, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) {
              return AuctionDetailsScreen(id: id);
            },
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(9.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Image(
                  image: AssetImage(auctionsList[id!]['imgurl']),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(9.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black26, Colors.black],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '${auctionsList[id!]["name"]}',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      //RatingWidget(id: id),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
