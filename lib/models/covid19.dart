import 'package:flutter/material.dart';

class COVID19case {
  Color? color;
  int? number;
  String? title;

  COVID19case({
    this.color,
    this.number,
    this.title,
  });
}

//COVID19 symptoms
class COVID19symptom {
  String? imageURL;
  String? title;

  COVID19symptom({
    this.imageURL,
    this.title,
  });
}

//COVID19 prevention
class COVID19prevention {
  String? text;
  String? imageURL;
  String? title;

  COVID19prevention({
    this.text,
    this.imageURL,
    this.title,
  });
}
