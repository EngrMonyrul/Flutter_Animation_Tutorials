import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool _willAnimate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() => _willAnimate = !_willAnimate),
          child: AnimatedContainer(
            height: _willAnimate ? 80 : 150,
            width: _willAnimate ? 300 : 80,
            padding: EdgeInsets.all(8.0),
            duration: Duration(seconds: 1),
            alignment: _willAnimate ? Alignment.centerLeft : Alignment.center,
            curve: Curves.fastOutSlowIn,
            decoration: BoxDecoration(
              color:
                  _willAnimate
                      ? Colors.green.withOpacity(0.3)
                      : Colors.blueGrey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: FlutterLogo(size: 60),
          ),
        ),
      ),
    );
  }
}
