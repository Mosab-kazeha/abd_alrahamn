

import 'package:flutter/material.dart';
import 'package:intro_to_quis/model/on_bording_model.dart';
import 'package:intro_to_quis/widget/on_bording_page.dart';
import 'package:intro_to_quis/widget/welcom_screen.dart';

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
        body: PageView.builder(
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: title.length,
          // itemCount: onBoardingData.length,
          // itemCount: onBoardingModelDataSorce.length,
          itemBuilder: (BuildContext context, int index) {
            print(index);
            return OnBordingPage(
              //!  //list case
              // conutOfPages: title.length,
              // buttonText: buttenTitle[index],
              // description: dec"[index],
              // title: title[index],
              //!  //map case
              // conutOfPages: onBoardingData.length,
              // buttonText: onBoardingData['buttenTitle']![index],
              // description: onBoardingData["dec"]![index],
              // title: onBoardingData["title"]![index],
              //! //model case
              conutOfPages: onBoardingModelDataSorce.length,
              buttonText: onBoardingModelDataSorce[index].buttenTitle,
              description: onBoardingModelDataSorce[index].dec,
              controller: controller,
              title: onBoardingModelDataSorce[index].title,

              isLastPage: index == onBoardingModelDataSorce.length - 1
                  ? true
                  : false,
              indexPage: index,
            );
          },
        ),
      ),
    );
  }
}

class ListViewBuildaer extends StatelessWidget {
  const ListViewBuildaer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemBuilder: (context, index) {
            print(index);
            return Container(
              width: 200,
              height: 50,
              color: Colors.teal,
              margin: EdgeInsets.all(20),
              child: Center(
                child: Text(index.toString(), style: TextStyle(fontSize: 20)),
              ),
            );
          },
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PageView(
          children: [
            WelcomScreen(
              title: "title..................",
              dec: "dec",
              textDate: "data",
              titleColor: Colors.amber,
            ),
            WelcomScreen(
              title: "title.................",
              dec: "dec",
              textDate: "data",
            ),
            WelcomScreen(title: "title", dec: "dec", textDate: "data"),
          ],
        ),
      ),
    );
  }
}
