import 'package:flutter/material.dart';

class StaggeredExample extends StatefulWidget {
  const StaggeredExample({super.key});

  @override
  State<StaggeredExample> createState() => _StaggeredExampleState();
}

class _StaggeredExampleState extends State<StaggeredExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _height;
  late Animation<Color?> _color;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _height = Tween<double>(begin: 50, end: 200).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.5, curve: Curves.ease),
      ),
    );

    _color = ColorTween(begin: Colors.purpleAccent, end: Colors.greenAccent)
        .animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(0.5, 1.0, curve: Curves.ease),
          ),
        );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    void dispose() => _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Staggered Animation")),
        body: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                width: 100,
                height: _height.value,
                color: _color.value,
              );
            },
          ),
        ),
      ),
    );
  }
}
