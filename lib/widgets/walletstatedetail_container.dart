import 'package:flutter/material.dart';
import '../models/models.dart';

class StatesDetailContainer extends StatelessWidget {
  final int? i;
  const StatesDetailContainer({
    Key? key, this.i,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        border: transactionsStat[i!]['border'] ?? Border(),
        borderRadius: BorderRadius.circular(15.0),
        color: transactionsStat[i!]['color'],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              "${transactionsStat[i!]['count']}",
              style: Theme.of(context).textTheme.headline1!.apply(
                  color: transactionsStat[i!]['text_color']),
            ),
          ),
          Expanded(
            child: Text(
              "${transactionsStat[i!]['text']}",
              style: TextStyle(
                color: transactionsStat[i!]['text_color'],
              ),
            ),
          ),
        ],
      ),
    );
  }
}