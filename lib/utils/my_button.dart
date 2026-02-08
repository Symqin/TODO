import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPresed;

  MyButton({super.key, required this.text, required this.onPresed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onPresed, child: Text(text));
  }
}
