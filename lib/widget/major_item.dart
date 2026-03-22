import 'package:flutter/material.dart';
import '../models/major.dart';

class MajorItem extends StatelessWidget {
  final Major major;

  const MajorItem({super.key, required this.major});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.home),
          const SizedBox(width: 10),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  major.title,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(major.description),
              ],
            ),
          ),

          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}