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