import 'package:flutter/material.dart';
import '../models/models.dart';
import '../widgets/widgets.dart';

class TransferCreditsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).buttonColor),
        title: const Text("Transfer ₵redits"),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 15.0,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: transactionsStat.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 3 / 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 3,
              ),
              itemBuilder: (ctx, id) {
                return StatesDetailContainer(i: id);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              "Waiting Transfers:",
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (ctx, i) {
                  return TransactionContainer(i: i);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
