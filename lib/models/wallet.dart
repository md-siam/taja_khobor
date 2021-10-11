import 'package:flutter/material.dart';

enum actions { add, receive }

Color darkBlue = Color(0xff071d40);
Color lightBlue = Color(0xff1b4dff);

String username = "Cybdom Tech";

List<Map<String, dynamic>> historyContainerList = [
  {
    'title': 'bKash',
    'subtitle': '2 hours to update',
    'actionType': actions.add,
    'logoURL': ['assets/images/wallet/bkash.png'],
  },
  {
    'title': 'Nagad',
    'subtitle': '2 hours to update',
    'actionType': actions.add,
    'logoURL': ['assets/images/wallet/nagad.png'],
  },
  {
    'title': 'Rocket',
    'subtitle': '2 hours to update',
    'actionType': actions.add,
    'logoURL': ['assets/images/wallet/rocket.png'],
  },
  {
    'title': 'Bank Transfer',
    'subtitle': '24 hours to update',
    'actionType': actions.add,
    'logoURL': ['assets/images/wallet/bank.png'],
  },
];

List<Map<String, dynamic>> transactionsStat = [
  {
    'count': 73,
    'color': Color(0xff1b4dfe),
    'text': 'Waiting For Confirmation',
    'text_color': Colors.white,
  },
  {
    'count': 49,
    'color': Color(0xff112f5f),
    'text': 'Be Pairing',
    'text_color': Colors.white,
  },
  {
    'count': 9,
    'color': Color(0xff1bc29f),
    'text': 'In Progress',
    'text_color': Colors.white,
  },
];

//Referrals Credits informations
List<Map<String, dynamic>> referrals = [
  {
    'name': 'Orko Hossain',
    'referral_number': '98217302193491',
    'type': 'SMS',
    'status': 'Done',
  },
  {
    'name': 'Amil Iftekhar',
    'referral_number': '98217302193491',
    'type': 'EMAIL',
    'status': 'Waiting',
  },
  {
    'name': 'Robiul Hossain',
    'referral_number': '98217302193491',
    'type': 'EMAIL',
    'status': 'Waiting',
  },
  {
    'name': 'Solaiman Kibria',
    'referral_number': '98217302193491',
    'type': 'EMAIL',
    'status': 'Done',
  },
  {
    'name': 'Iftekher',
    'referral_number': '98217302193491',
    'type': 'SMS',
    'status': 'Done',
  },
  {
    'name': 'Siam Ali',
    'referral_number': '98217302193491',
    'type': 'SMS',
    'status': 'Pairing',
  },
];

//Transactions Credits informations
List<Map<String, dynamic>> transactions = [
  {
    'title': 'Bank Transfer',
    'originator': 'Eastern Bank Ltd',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Waiting',
  },
  {
    'title': 'bKash',
    'originator': 'Personal',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Done',
  },
  {
    'title': 'bKash',
    'originator': 'Personal',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Pairing',
  },
  {
    'title': 'Rocket',
    'originator': 'Merchant',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Waiting',
  },
  {
    'title': 'Nagad',
    'originator': 'Personal',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Waiting',
  },
  {
    'title': 'Bank Transfer',
    'originator': 'Dutch Bangla Bank',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Waiting',
  },
  {
    'title': 'Bank Transfer',
    'originator': 'Dutch Bangla Bank',
    'transaction_number': '98217302193491',
    'type': 'Public',
    'status': 'Pairing',
  },
];
