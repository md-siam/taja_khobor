import 'package:flutter/material.dart';
import '../models/models.dart';

class WalletHistoryContainer extends StatelessWidget {
  final int id;

  const WalletHistoryContainer({Key? key, required this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    IconData? _icon;
    if (historyContainerList[id]['actionType'] == actions.add)
      _icon = Icons.add;
    else if (historyContainerList[id]['actionType'] == actions.receive)
      _icon = Icons.mail_outline;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width / 1.5,
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 14,
          ),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              ...List.generate(
                historyContainerList[id]['logoURL'].length,
                (f) {
                  return Image(
                    height: 60,
                    image:
                        ExactAssetImage(historyContainerList[id]['logoURL'][f]),
                  );
                },
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: lightBlue,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 15.0, // soften the shadow
                      spreadRadius: 2.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        5.0, // Move to bottom 10 Vertically
                      ),
                    ),
                  ],
                ),
                child: IconButton(
                  icon: Icon(
                    _icon,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print("Add fund pressed");
                  },
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            "${historyContainerList[id]['title']}",
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .apply(fontWeightDelta: 2),
          ),
          Text(
            "${historyContainerList[id]['subtitle']}",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Spacer(),
        ],
      ),
    );
  }
}
