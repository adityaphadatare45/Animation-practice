/*
Animated theme : 
What it does - 
It animates changes in the app’s ThemeData (like colors, fonts, brightness) without instantly switching — giving a smooth transition.
Instead of your UI abruptly jumping from light mode to dark mode (or from one color scheme to another), AnimatedTheme will gradually transition theme properties over a specified duration.

Key points - 
Child: Usually your MaterialApp or a subtree of your widget tree.
Data: The new ThemeData to animate to.
Duration: How long the transition takes.
Works well for light/dark mode animations.
We don’t need to animate each widget manually — the theme change is applied to all widgets that use theme values.
 */
import 'package:flutter/material.dart';

class Animatedtheme extends StatefulWidget{
  const Animatedtheme({super.key});

  @override
  State<StatefulWidget> createState() => _Animatedthemeexample();
}

class _Animatedthemeexample extends State<Animatedtheme>{
   bool _isDark = false;


  @override
  Widget build(BuildContext context) {
   return AnimatedTheme(
    data: _isDark ? ThemeData.dark() : ThemeData.light(), 
    duration: const Duration(milliseconds: 500),
    child: MaterialApp(
     theme: _isDark ? ThemeData.dark() : ThemeData.light(),
     home: Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            setState(() {
              _isDark = !_isDark;
            });
          }, 
          child: const Text('Toggle Theme'),
        ),
      ),
     ),
    ),
   );
  }
}