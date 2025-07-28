import 'package:flutter/material.dart';

class TweenExample extends StatefulWidget {
  const TweenExample({super.key});

  @override
  State<TweenExample> createState() => _TweenExampleState();
}

class _TweenExampleState extends State<TweenExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 50, end: 200).animate(_controller);

    super.initState();
    _controller.forward();
  }

  @override
  void dispose() => _controller.dispose();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Tween Animation')),
        body: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Container(
                width: _animation.value,
                height: _animation.value,
                color: Colors.lightBlue,
              );
            },
          ),
        ),
      ),
    );
  }
}
