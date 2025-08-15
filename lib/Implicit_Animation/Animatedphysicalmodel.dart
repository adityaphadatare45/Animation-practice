/*
Animated physical model : 
 AnimatedPhysicalModel in Flutter is used when you want to animate the "physical" appearance of a widget — 
 things that are related to how it would look in real-world material design terms.

It’s particularly for animating:

Color of the surface
Shadow color
Elevation (depth/shadow size)
Shape (rectangle or circle)
Border radius (rounded corners)
*/




import 'package:flutter/material.dart';

class Animatedphysicalmodel extends StatefulWidget{
  const Animatedphysicalmodel({super.key});

  @override
  State<StatefulWidget> createState() => _animatedmoddel();  
}

class _animatedmoddel extends State<Animatedphysicalmodel>{
   bool _isElevated = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedPhysicalModel Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isElevated = !_isElevated;
            });
          },
          child: AnimatedPhysicalModel(
            child: Container(
              width: 150,
              height: 150,
            ),
            color: _isElevated ? Colors.blue : Colors.red,
            shadowColor: Colors.black,
            shape: BoxShape.rectangle,
            elevation: _isElevated ? 20.0 : 0.0,
            borderRadius: BorderRadius.circular(16),
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}