/*
AnimatedPadding :

Use: Animates changes in a widget’s padding.
When to use:
Smoothly expanding/collapsing spacing around a widget without sudden jumps.
*/
import 'package:flutter/material.dart';

class Animatedpadding extends StatefulWidget{
  const Animatedpadding({super.key});

  @override
  State<StatefulWidget> createState() => _animatedOpacityAnimation();
  
}
class _animatedOpacityAnimation extends State<Animatedpadding>{
  double _paddingValue = 20.0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: AnimatedPadding(
        padding: EdgeInsets.all(_paddingValue), 
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Container(
          color: Colors.blue,
          width: 150,
          height: 150,
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      child: const Icon(Icons.play_arrow),
      onPressed: (){
        setState(() {
          _paddingValue = _paddingValue == 20.0 ? 60.0 : 20.0;
        });
      }
    ),
   );
  }
}