import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.purpleAccent.shade700,
        body: Padding(
          padding: const EdgeInsets.only(
            top: 60,
            right: 21,
            left: 21,
            bottom: 91,
          ),
          child: Column(
            children: [
              Align(
                alignment: AlignmentGeometry.centerRight,
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(139, 168, 181, 1),
                    fontSize: 17,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 68, horizontal: 50),
                child: Image(
                  image: FileImage(File("C:/Users/mosab/Desktop/cuate.png")),
                ),
              ),
              Text(
                "Stay Organized",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
              SizedBox(height: 52),
              Text(
                "Group your tasks and keep\n them organized",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                  color: Color.fromRGBO(153, 153, 153, 1),
                  // Color.fromARGB(255, 153, 153, 153),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(28),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: Color(0xFF8BA8B5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 317,
                height: 54,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFF8BA8B5),
                ),
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
