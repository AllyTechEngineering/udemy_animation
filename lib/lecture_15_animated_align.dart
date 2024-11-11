import 'package:flutter/material.dart';

class Lecture15AnimatedAlign extends StatefulWidget {
  const Lecture15AnimatedAlign({super.key});

  @override
  State<Lecture15AnimatedAlign> createState() => _Lecture15AnimatedAlignState();
}

class _Lecture15AnimatedAlignState extends State<Lecture15AnimatedAlign> {
  int _jerryAligned = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Align'),
      ),
      body: Stack(
        children: [
          AnimatedAlign(
            alignment: getNextAligment(_jerryAligned),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("lib/assets/jerry.png"),
            ),
          ),
                    AnimatedAlign(
            alignment: getNextAligment(_jerryAligned +1),
            duration: const Duration(milliseconds: 500),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.transparent,
              child: Image.asset("lib/assets/tom.png"),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _jerryAligned = _jerryAligned + 1;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  Alignment getNextAligment(int alignment) {
    switch (alignment) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.topCenter;
      default:
        _jerryAligned = 0;
        return Alignment.topLeft;
    }
  }
}
