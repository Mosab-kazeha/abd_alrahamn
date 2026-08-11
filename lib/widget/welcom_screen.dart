import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomScreen extends StatelessWidget {
  WelcomScreen({
    super.key,
    required this.dec,
    required this.textDate,
    required this.title,
    this.titleColor,
  });
  String title;
  String dec;
  String textDate;
  Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterLogo(size: 70),

          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: titleColor == null
                  ? Color.fromRGBO(153, 153, 153, 1)
                  : titleColor,
            ),
          ),
          Text(
            dec,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
          ),
          ElevatedButton(onPressed: () {}, child: Text(textDate)),
        ],
      ),
    );
  }
}
