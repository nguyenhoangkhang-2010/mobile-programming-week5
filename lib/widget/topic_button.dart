import 'package:flutter/material.dart';

class TopicButton extends StatelessWidget {
  final String text;

  const TopicButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.deepPurple,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}