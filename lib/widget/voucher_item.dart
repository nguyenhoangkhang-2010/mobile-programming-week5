import 'package:flutter/material.dart';
import '../models/voucher_model.dart';

class VoucherItem extends StatelessWidget {
  final VoucherModel voucher;

  const VoucherItem({super.key, required this.voucher});

  @override
  Widget build(BuildContext context) {
    final bool isCollect = voucher.actionText == "Thu thập";

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.card_giftcard),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  voucher.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(voucher.description),
                Text(
                  voucher.expiry,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          if (voucher.actionText.isNotEmpty)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: isCollect && !voucher.isCollected
                  ? BoxDecoration(
                      border: Border.all(color: Colors.pink), 
                      borderRadius: BorderRadius.circular(6),
                    )
                  : null,
              child: Text(
                voucher.actionText,
                style: const TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
        ],
      ),
    );
  }
}