import 'dart:ui';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FlipAnimationDemo extends StatefulWidget {
  @override
  _FlipAnimationDemoState createState() => _FlipAnimationDemoState();
}

class _FlipAnimationDemoState extends State<FlipAnimationDemo> {
  late double _height;
  late double _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flip Animation Demo'),
      ),
      body: Container(
        width: _width,
        height: _height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Vertical Flip Animation',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 180,
                  height: 180,
                  margin: EdgeInsets.only(top: 20),
                  child: FlipCard(
                    direction: FlipDirection.VERTICAL, // default
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue.shade400,
                          ),
                        ),
                        Text(
                          'Front',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.orange.shade200,
                          ),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Horizontal Flip Animation',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.5),
                ),
                Container(
                  width: 180,
                  height: 180,
                  margin: EdgeInsets.only(top: 20),
                  child: FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.orange.shade200,
                          ),
                        ),
                        Text(
                          'Front',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    back: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.blue.shade400,
                          ),
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
