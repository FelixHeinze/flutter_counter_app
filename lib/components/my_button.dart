import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final Color color;

  const MyButton({super.key, required this.text, required this.onTap, required this.color});

  @override
  Widget build(BuildContext context) { // vordefiniertes Widget für einen Button, der Text und onTap Funktionalität hat
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(text),
      ),
    );
    }
}
