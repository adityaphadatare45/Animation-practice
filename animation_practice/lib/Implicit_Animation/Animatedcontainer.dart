import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() => _AnimatedContainerState();
}

class _AnimatedContainerState extends State<AnimatedContainerExample> {
  bool isExpanded = false;

  void toggleContainer() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer Example")),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          width: isExpanded ? 200 : 100,
          height: isExpanded ? 300 : 100,
          color: isExpanded ? Colors.blue : Colors.yellow,
          curve: Curves.easeInOut,
          child: const FlutterLogo(size: 75),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleContainer,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
