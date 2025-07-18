import 'package:animation_practice/Implicit_Animation/Animatedcontainer.dart';
import 'package:flutter/material.dart';
import 'Implicit_Animation/Animatedalign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ✨ Change this widget to test other animations
  final Widget _currentExample = const AnimatedContainerExample();
  // e.g. const AnimatedContainerExample();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Implicit Animations',
      home: Scaffold(
        appBar: AppBar(title: const Text('Implicit Animation Demo')),
        body: Center(child: _currentExample),
      ),
    );
  }
}
 
 
