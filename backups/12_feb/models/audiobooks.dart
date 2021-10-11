import 'package:flutter/material.dart';

Color blue = Color(0xff279aff), grey = Color(0xff9f9f9f);

List<String> booksCategories = [
  "Action",
  "Fantasy",
  "Science fiction",
  "Horror",
  "Thriller",
  "Survival",
  "Historical",
  "Stealth",
  "Comedy",
  "Business",
  "Drama",
  "Non-fiction",
  "Sandbox",
  "Educational",
  "Kids",
  "Open world"
];

List<Map<String, dynamic>> booksList = [
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
    'assets/images/audiobooks_en/mariokart.jpg',
    'imgs': [
      "assets/images/audiobooks_en/mariokart_0.png",
      "assets/images/audiobooks_en/mariokart_1.png",
      "assets/images/audiobooks_en/mariokart_2.png"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
    'assets/images/audiobooks_en/witcher.jpg',
    'imgs': [
      "assets/images/audiobooks_en/witcher_0.jpg",
      "assets/images/audiobooks_en/witcher_1.jpg",
      "assets/images/audiobooks_en/witcher_2.jpg"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
    'assets/images/audiobooks_en/persona.jpg',
    'imgs': [
      "assets/images/audiobooks_en/persona_0.jpg",
      "assets/images/audiobooks_en/persona_1.jpg",
      "assets/images/audiobooks_en/persona_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
    'assets/images/audiobooks_en/red.jpg',
    'imgs': [
      "assets/images/audiobooks_en/red_0.jpg",
      "assets/images/audiobooks_en/red_1.jpg",
      "assets/images/audiobooks_en/red_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
    'assets/images/audiobooks_en/mariokart.jpg',
    'imgs': [
      "assets/images/audiobooks_en/mariokart_0.png",
      "assets/images/audiobooks_en/mariokart_1.png",
      "assets/images/audiobooks_en/mariokart_2.png"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
    'assets/images/audiobooks_en/witcher.jpg',
    'imgs': [
      "assets/images/audiobooks_en/witcher_0.jpg",
      "assets/images/audiobooks_en/witcher_1.jpg",
      "assets/images/audiobooks_en/witcher_2.jpg"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
    'assets/images/audiobooks_en/persona.jpg',
    'imgs': [
      "assets/images/audiobooks_en/persona_0.jpg",
      "assets/images/audiobooks_en/persona_1.jpg",
      "assets/images/audiobooks_en/persona_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
    'assets/images/audiobooks_en/red.jpg',
    'imgs': [
      "assets/images/audiobooks_en/red_0.jpg",
      "assets/images/audiobooks_en/red_1.jpg",
      "assets/images/audiobooks_en/red_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Mario Kart',
    'rating': 8.2,
    'imgurl':
    'assets/images/audiobooks_en/mariokart.jpg',
    'imgs': [
      "assets/images/audiobooks_en/mariokart_0.png",
      "assets/images/audiobooks_en/mariokart_1.png",
      "assets/images/audiobooks_en/mariokart_2.png"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'The Witcher 3: Wild Hunt',
    'rating': 9.1,
    'imgurl':
    'assets/images/audiobooks_en/witcher.jpg',
    'imgs': [
      "assets/images/audiobooks_en/witcher_0.jpg",
      "assets/images/audiobooks_en/witcher_1.jpg",
      "assets/images/audiobooks_en/witcher_2.jpg"
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Persona 5',
    'rating': 8.5,
    'imgurl':
    'assets/images/audiobooks_en/persona.jpg',
    'imgs': [
      "assets/images/audiobooks_en/persona_0.jpg",
      "assets/images/audiobooks_en/persona_1.jpg",
      "assets/images/audiobooks_en/persona_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
  {
    'name': 'Red Dead Redemption 2',
    'rating': 9.5,
    'imgurl':
    'assets/images/audiobooks_en/red.jpg',
    'imgs': [
      "assets/images/audiobooks_en/red_0.jpg",
      "assets/images/audiobooks_en/red_1.jpg",
      "assets/images/audiobooks_en/red_3.jpg",
    ],
    'desc':
    'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Inventore saepe mollitia iusto, nesciunt unde libero fugiat minus labore in vero quae, neque ea. Necessitatibus molestias perferendis consequatur voluptatibus, eveniet iusto.'
  },
];
