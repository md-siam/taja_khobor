import 'package:flutter/material.dart';
import 'package:taja_khobor/models/covid19.dart';

const String CaseUpdateDate = 'April 17';

final List<COVID19case> COVID19_Info = [
  COVID19case(
    color: kInfectedColor,
    number: 3473,
    title: 'Infected',
  ),
  COVID19case(
    color: kDeathColor,
    number: 101,
    title: 'Deaths',
  ),
  COVID19case(
    color: kRecovercolor,
    number: 2251,
    title: 'Recovered',
  ),
];

List<COVID19symptom> COVID19_symp = [
  COVID19symptom(
    imageURL: "assets/images/COVID19/fever.png",
    title: "Fever",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/caugh.png",
    title: "Dry Cough",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/fever.png",
    title: "Tiredness",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Aches and Pains",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Sore Throat",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Diarrhoea",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Conjunctivitis",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Headache",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Loss of taste or smell",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Difficulty Breathing",
  ),
  COVID19symptom(
    imageURL: "assets/images/COVID19/headache.png",
    title: "Chest Pain or Pressure",
  ),
];

List<COVID19prevention> COVID19_prev = [
  COVID19prevention(
    text:
        "Since the start of the coronavirus outbreak some places have fully embraced wearing face mask",
    imageURL: "assets/images/COVID19/wear_mask.png",
    title: "Wear face mask",
  ),
  COVID19prevention(
    text:
        "Washing hands using soap for a minimum of 20 seconds reduces the possibility of spreading the corona virus.",
    imageURL: "assets/images/COVID19/wash_hands.png",
    title: "Wash your hands",
  ),
];

// Colors
const kInfectedColor = Color(0xFFFF8748);
const kDeathColor = Color(0xFFFF4848);
const kRecovercolor = Color(0xFF36C12C);
const kTextLightColor = Color(0xFF959595);
final kShadowColor = Color(0xFFB7B7B7).withOpacity(.16);

// Text Style
const kHeadingTextStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
);

const kSubTextStyle = TextStyle(fontSize: 16, color: kTextLightColor);
