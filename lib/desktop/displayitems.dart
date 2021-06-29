import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:animated_button/animated_button.dart';

var children2 = <Widget>[
  SizedBox(height: 30),
  VxCircle(
          child: "Introducing Scale".text.blue100.make().centered(),
          backgroundColor: Vx.white)
      .shadow,
  SizedBox(
    height: 12,
  ),
  // VxBox(
  //         child: Text(
  //   "Scale",
  //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
  // ).centered())
  //     // .hexColor("#FFFFFF")
  //     .shadowXs
  //     .height(100)
  //     .make()
  //     .continuousRectangle(
  //       width: 100,
  //       height: 50,
  //       radius: 10,
  //       // backgroundColor: Colors.green,
  //     )
  //     .centered(),,
  Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Who scream'),
    color: Colors.green[400],
  ),
  Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Revolution is coming...'),
    color: Colors.green[500],
  ),
  Container(
    padding: const EdgeInsets.all(8),
    child: const Text('Revolution, they...'),
    color: Colors.green[600],
  ),
  AnimatedButton(
    shadowDegree: ShadowDegree.dark,
    color: Colors.blue,
    child: Text(
      'Simple button',
      style: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
    onPressed: () {},
  )
];
