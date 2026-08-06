import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intro_to_quis/widget/on_bording_page.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: [
            OnBordingPage(
              controller: controller,
              buttonText: 'Next',
              description:
                  'Write your tasks in a list and check them when done!',
              isLastPage: false,
              title: 'Write Lists',
            ),
            OnBordingPage(
              controller: controller,
              buttonText: 'Next',
              description: 'Group your tasks and keep them organized',
              isLastPage: false,
              title: 'Stay Organized',
            ),
            OnBordingPage(
              controller: controller,
              buttonText: 'Let’s Start',
              description: 'See how much you have done from your tasks',
              isLastPage: true,
              title: 'Check Progress',
            ),
          ],
        ),
      ),
    );
  }
}
