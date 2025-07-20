import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleExample extends StatefulWidget {
  const AnimatedDefaultTextStyleExample({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedDefaultTextStyleState();
}

class _AnimatedDefaultTextStyleState extends State<AnimatedDefaultTextStyleExample> {
  bool _first = false;

  void _toggleTextStyle() {
    setState(() {
      _first = !_first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedDefaultTextStyle'),
      ),
      body: Center(
        child: AnimatedDefaultTextStyle(
          child: const Text('Welcome Back!'),
          style: _first
              ? const TextStyle(
                  fontSize: 24,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )
              : const TextStyle(
                  fontSize: 16,
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                ),
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleTextStyle,
        child: const Icon(Icons.swap_horiz),
      ),
    );
  }
}
