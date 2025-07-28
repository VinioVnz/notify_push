import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  const OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => _OpacityExampleState();
}

class _OpacityExampleState extends State<OpacityExample> {
  bool _visible = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: Duration(milliseconds: 500),
              child: Container(
                width: 150,
                height: 150,
                color: Colors.red,
              ), 
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () => setState((){
                _visible = !_visible;
              }), child: Text("Trocar"))
            ],
          ),
        ),
      ),
    );
  }
}