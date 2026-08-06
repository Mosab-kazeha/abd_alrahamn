import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intro_to_quis/widget/todo_button.dart';

// ignore: must_be_immutable
class OnBordingPage extends StatelessWidget {
  OnBordingPage({
    super.key,
    required this.buttonText,
    required this.description,
    required this.isLastPage,
    required this.title,
    required this.controller,
  });
  bool isLastPage;
  String title;
  String description;
  String buttonText;
  PageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, right: 21, left: 21, bottom: 91),
      child: Column(
        children: [
          isLastPage == true
              ? SizedBox(height: 30)
              : Align(
                  alignment: AlignmentGeometry.centerRight,
                  child: TextButton(
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color.fromRGBO(139, 168, 181, 1),
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),

          Row(
            children: [
              Image(image: FileImage(File("C:/Users/mosab/Desktop/cuate.png"))),
            ],
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          SizedBox(height: 52),
          Text(
            description,
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
          TodoButton(
            onTap: () {
              if (!isLastPage) {
                controller.nextPage(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.bounceOut,
                );
              }
            },
            buttonText: buttonText,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
