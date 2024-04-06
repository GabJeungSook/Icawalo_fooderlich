import 'package:flutter/material.dart';
import 'author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      // 1
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        // 2
        child: const Column(
          children: [
            // TODO: Add author information
            AuthorCard(
              authorName: 'Mike Katz',
              title: 'Smoothie Connoisseur',
              imageProvider: AssetImage('assets/author_katz.jpeg'),
            ),
            // TODO: Add Positioned text
            // 1
            // 1
            Expanded(
              // 2
              child: Stack(
                children: [
                  // 3
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: TextStyle(
                        fontSize: 24.0,
                        shadows: [
                          Shadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(4.0, 4.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // 4
                  Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                         style: TextStyle(
                        fontSize: 24.0,
                        shadows: [
                          Shadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(4.0, 4.0),
                          ),
                        ],
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
