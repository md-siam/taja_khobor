import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

missingAlert(context) {
  Alert(
      context: context,
      type: AlertType.warning,
      title: "MISSING",
      style: AlertStyle(
        titleStyle: TextStyle(color: Theme.of(context).cardColor),
        descStyle: TextStyle(color: Colors.grey),
      ),
      desc:
          "Database is not connected. Therefore can't show you the information",
      buttons: [
        DialogButton(
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "CLOSE",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
