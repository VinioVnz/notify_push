import 'package:flutter/material.dart';

class HeroExample extends StatelessWidget {
  const HeroExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero animation')),
      body: Center(
        child: GestureDetector(
          child: Hero(
            tag: 'hero-image',
            child: Image.asset('assets/gato.jpg', width: 100),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SecondPage()),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Center(
        child: Hero(
          tag: 'hero-tag',
          child: Image.asset('assets/gato.jpg', width: 250),
        ),
      ),
    );
  }
}
