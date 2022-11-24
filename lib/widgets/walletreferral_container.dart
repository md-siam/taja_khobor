import 'package:flutter/material.dart';

import '../models/models.dart';

class ReferralContainer extends StatelessWidget {
  final int? i;
  const ReferralContainer({Key? key, this.i}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Text(
                "${referrals[i!]['name']}",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .apply(fontWeightDelta: 2),
              ),
            ),
            const SizedBox(width: 15),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
              decoration: BoxDecoration(
                color: const Color(0xffd5d7dc),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                "${referrals[i!]['status']}",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        Row(
          children: <Widget>[
            const Text("Referral Number: "),
            Text("${referrals[i!]['referral_number']}")
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: <Widget>[
            const Text("Type: "),
            Text("${referrals[i!]['type']}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const SizedBox(width: 15.0),
            ElevatedButton(
              child: const Text(
                "Delete",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                print("Delete this referral");
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                elevation: MaterialStatePropertyAll<double>(0),
              ),
            ),
          ],
        ),
        Divider(
          height: 21,
          color: Theme.of(context).cardColor,
        ),
      ],
    );
  }
}
