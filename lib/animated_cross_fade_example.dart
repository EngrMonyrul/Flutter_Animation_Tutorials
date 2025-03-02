import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool _willAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => _willAnimate = !_willAnimate),
          child: AnimatedCrossFade(
            firstChild: Image.asset("assets/img_hills.jpg"),
            secondChild: Image.asset("assets/img_ocean.jpg"),
            crossFadeState:
                _willAnimate
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
