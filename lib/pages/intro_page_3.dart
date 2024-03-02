import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // For optional Lottie animation

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Adjust based on your background image
      body: Stack(
        // Use Stack to position elements effectively
        children: [
          Image.network(
            'https://images.hdqwalls.com/download/baldurs-gate-3-digital-deluxe-edition-ak-1280x2120.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            left: 80,
            top: 70,
            child: Lottie.network(
              'https://lottie.host/b8a083bd-3bf2-446e-bf9c-5a75422b9e84/Rtldco6DAZ.json',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '¡Embárcate en una aventura épica!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Baldur\'s Gate 3 te sumerge en un mundo lleno de magia, peligro y decisiones difíciles. Crea tu personaje, reúne un grupo y lucha por la supervivencia en un entorno hostil.', // Compelling body text
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.8),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
