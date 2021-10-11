import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

successAlert(context) {
  Alert(
      context: context,
      type: AlertType.success,
      title: "SUCCESS",
      style: AlertStyle(
        titleStyle: TextStyle(color: Theme.of(context).buttonColor),
        descStyle: TextStyle(color: Colors.grey),
      ),
      desc:
          "Your request has been successfully submitted, and you will receive a confirmation SMS shortly.",
      buttons: [
        DialogButton(
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "COOL",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
