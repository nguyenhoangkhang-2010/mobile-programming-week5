import 'package:flutter/material.dart';
import '../widget/filterchip_widget.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.filter_list),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChipWidget(
                    label: "Sắp xếp",
                    icon: Icons.arrow_drop_down,
                  ),
                  const SizedBox(width: 10),
                  FilterChipWidget(
                    label: "Dịch vụ",
                    icon: Icons.arrow_drop_down,
                  ),
                  const SizedBox(width: 10),
                  FilterChipWidget(label: "Gần tôi"),
                  const SizedBox(width: 10),
                  FilterChipWidget(label: "Yêu thích"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}