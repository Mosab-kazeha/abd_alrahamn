import 'dart:io';
import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() {
  runApp(ColumnScreen());
}

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.pinkAccent,
          child: Column(
            children: [
              Column(
                // mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(color: Colors.teal, width: 200, height: 200),
                  Container(
                    color: Colors.deepOrange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          color: Colors.amber,
                          width: 100,
                          height: 100,
                          // margin: EdgeInsets.symmetric(vertical: 20),
                        ),
                        Container(
                          color: Colors.tealAccent,
                          width: 100,
                          height: 100,
                          // margin: EdgeInsets.symmetric(vertical: 20),
                        ),
                      ],
                    ),
                  ),
                  Container(color: Colors.black, width: 100, height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: AlignmentGeometry.bottomLeft,
            child: Container(
              // color: Colors.amberAccent,
              width: 200,
              height: 200,
              // alignment: Alignment(-0.5, 0.5),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amberAccent,
                // borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(20),
                // bottomRight: Radius.circular(20),
                // ),
                border: Border.all(
                  color: Colors.black,
                  width: 3,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.teal,
                    offset: Offset(10, 10),
                    blurRadius: 10,
                    blurStyle: BlurStyle.inner,
                  ),
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(-10, 10),
                    blurRadius: 10,
                    blurStyle: BlurStyle.inner,
                  ),
                ],
                // gradient: LinearGradient(
                //   colors: [Colors.black, Colors.white],
                //   begin: AlignmentGeometry.center,
                //   end: AlignmentGeometry.bottomCenter,
                // ),
                // gradient: RadialGradient(
                //   colors: [Colors.black, Colors.white, Colors.red],
                //   center: AlignmentGeometry.centerLeft,
                //   radius: 1,
                // ),
                gradient: SweepGradient(
                  colors: [Colors.white, Colors.black],
                  endAngle: math.pi * 1,
                ),
                // image: DecorationImage(
                //   image: FileImage(File("C:/Users/mosab/Desktop/no_internet.png")),
                // ),
              ),
              child: Image.asset("assets/images/no_internet.png"),
            ),
          ),
        ),
      ),
    );
  }
}

// abstract class MyName {
//   void sayMyName(String name) {
//     print(name);
//   }

//   sayMyAge();
// }

// class Person extends MyName {
//   @override
//   sayMyAge() {

//     }
// }
