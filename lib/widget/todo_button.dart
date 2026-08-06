import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoButton extends StatelessWidget {
  TodoButton({
    super.key,
    required this.buttonText,
    required this.controller,
    this.onTap,
  });
  PageController controller;
  String buttonText;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 317,
        height: 54,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFF8BA8B5),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
