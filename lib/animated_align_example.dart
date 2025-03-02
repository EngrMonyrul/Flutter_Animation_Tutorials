import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  bool _willAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => setState(() => _willAnimate = !_willAnimate),
        child: Container(
          height: 400,
          width: double.maxFinite,
          color: Colors.blueGrey,
          child: AnimatedAlign(
            alignment: _willAnimate ? Alignment.topRight : Alignment.bottomLeft,
            duration: Duration(milliseconds: 600),
            child: FlutterLogo(size: 30),
          ),
        ),
      ),
    );
  }
}
