import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class ReferralCreditsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        title: Text("Referral ₵redits"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: transactionsStat.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
              ),
              itemBuilder: (ctx, id) {
                return StatesDetailContainer(i: id);
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Waiting Referrals:",
              style: TextStyle(
                color: Theme.of(context).buttonColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Divider(
              height: 31,
              color: Theme.of(context).cardColor,
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                itemCount: referrals.length,
                itemBuilder: (ctx, i) {
                  return ReferralContainer(i: i);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
