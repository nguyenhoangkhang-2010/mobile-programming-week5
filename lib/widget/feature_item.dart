import 'package:flutter/material.dart';
import 'package:app_week5/models/feature_model.dart';

class FeatureItem extends StatelessWidget {
  final FeatureModel feature;

  const FeatureItem({
    super.key,
    required this.feature,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          feature.icon,
          color: feature.color,
          size: 28,
        ),

        const SizedBox(height: 5),

        Text(
          feature.title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}