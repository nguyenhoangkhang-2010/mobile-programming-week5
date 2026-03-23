import 'package:flutter/material.dart';
import '../models/voucher_model.dart';
import '../widget/filter_bar.dart';
import '../widget/banner_section.dart';
import '../widget/voucher_item.dart';


class VoucherScreen extends StatelessWidget {
  const VoucherScreen({super.key});

  List<VoucherModel> get vouchers => const [
        VoucherModel(
          title: "CGV",
          description: "Đồng giá 79K vé 2D",
          expiry: "HSD: 28/02/2025",
        ),
        VoucherModel(
          title: "Giảm 100K",
          description: "Cho đơn từ 0đ",
          expiry: "HSD: 28/02/2025",
        ),
        VoucherModel(
          title: "Tặng 100K",
          description: "Mở thẻ VIB",
          expiry: "HSD: 31/03/2025",
        ),
        VoucherModel(
          title: "Hoàn 15K",
          description: "Cho hóa đơn từ 3.000.000đ",
          expiry: "Hết hạn sau 5 ngày",
        ),
        VoucherModel(
          title: "Giảm 10K",
          description: "Cho đơn từ 100K",
          expiry: "",
          actionText: "Thu thập",
          isCollected: false,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.pink[200],
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Quà của Vinh (7)"),
        actions: const [
          Icon(Icons.card_giftcard),
          SizedBox(width: 10),
          Icon(Icons.close),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          const FilterBar(),
          const BannerSection(),
          Expanded(
            child: ListView.builder(
              itemCount: vouchers.length,
              itemBuilder: (context, index) {
                return VoucherItem(voucher: vouchers[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}