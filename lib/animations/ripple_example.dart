//ripple - ondas
import 'package:flutter/material.dart';

class RippleExample extends StatelessWidget {
  const RippleExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Ripple effect'),),
        body: Center(
          child: Material(
            color: Colors.white,
            child: InkWell(
              onTap: () {
                print('toque detectado');
              },
              splashColor: Colors.blue.withBlue(100),
              highlightColor: Colors.blue.withAlpha(50),
              child: Container(
                width: 150,
                height: 150,
                alignment: Alignment.center,
                child: Text("Toque aqui"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}