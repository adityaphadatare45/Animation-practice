import 'package:flutter/material.dart';

class AnimatedalignExample extends StatefulWidget{
  const AnimatedalignExample({super.key});

  @override
  _Animatedalignpage createState() => _Animatedalignpage();

}
class _Animatedalignpage extends State<AnimatedalignExample> {
  bool isRight = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animatedalign'),
      ),
      body: Column(
        children: [
          Expanded(
            child: AnimatedAlign(
              alignment: isRight ? Alignment.centerRight : Alignment.centerLeft ,
              duration: Duration(seconds: 1),
              child: FlutterLogo(size: 100,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  isRight = !isRight;
                });
              },
              child: Text('Toggle Alignment'),
            ),
          ),
        ],
      ),
    );
  }
}
  