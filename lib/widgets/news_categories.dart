import 'package:flutter/material.dart';

import '../alerts/alerts.dart';
import '../models/models.dart';

class NewsCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90.0,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => missingAlert(context), //button
            child: Container(
              margin: const EdgeInsets.all(10.0),
              width: 160.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF00DDD2),
                    Color(0xFF00A6F9),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF00A6F9),
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  categories[index].toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
