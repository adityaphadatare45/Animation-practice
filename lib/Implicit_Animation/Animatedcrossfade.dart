/*
AnimatedCrossFade :

Use: Crossfades between two widgets (and optionally resizes them).
When to use:

Switching between two different views or states (collapsed ↔ expanded).
 */

import 'package:flutter/material.dart';

class AnimatedcrossfadeExample extends StatefulWidget {
  const AnimatedcrossfadeExample({super.key});

  @override
  State<StatefulWidget> createState() => _AnimatedcrossFade();
  
}

class _AnimatedcrossFade extends State<AnimatedcrossfadeExample>{
  bool _first = false;

  void toggleCrossFade() {
    setState(() {
      _first = !_first;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnimatedCrossFade Example")
      ),
      body: Padding(
        padding: EdgeInsets.all(16.4),
        child: AnimatedCrossFade(
           firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 150,),
           secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 110,), 
           crossFadeState: _first ?CrossFadeState.showFirst:CrossFadeState.showSecond,
           duration: const Duration(seconds: 1)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: toggleCrossFade,
        child: Icon(Icons.play_arrow),
      ),
    );
  }  
}