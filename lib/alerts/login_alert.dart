import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

loginAlert(context) {
  Alert(
      context: context,
      title: "LOGIN",
      style: AlertStyle(
        titleStyle: TextStyle(color: Theme.of(context).buttonColor),
      ),
      content: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              icon: Icon(
                Icons.phone,
                color: Theme.of(context).buttonColor,
              ),
              labelText: 'Phone',
            ),
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(
                Icons.lock,
                color: Theme.of(context).buttonColor,
              ),
              labelText: 'Password',
            ),
          ),
        ],
      ),
      buttons: [
        DialogButton(
          color: Colors.blue,
          onPressed: () => Navigator.pop(context),
          child: Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        )
      ]).show();
}
