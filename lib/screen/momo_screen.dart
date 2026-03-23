import 'package:flutter/material.dart';
import '../models/feature_model.dart';
import '../widget/feature_item.dart';
import '../widget/section_title.dart';
import '../widget/banner_widget.dart';

class MomoScreen extends StatelessWidget {
    MomoScreen({super.key});

  final List<FeatureModel> features = [
    FeatureModel(title: "Chuyển tiền", icon: Icons.attach_money, color: Colors.red),
    FeatureModel(title: "Thanh toán", icon: Icons.receipt, color: Colors.blue),
    FeatureModel(title: "Nạp tiền", icon: Icons.phone_android, color: Colors.green),
    FeatureModel(title: "Mua thẻ", icon: Icons.card_giftcard, color: Colors.orange),
    FeatureModel(title: "Ví", icon: Icons.account_balance_wallet, color: Colors.purple),
    FeatureModel(title: "Đi bộ", icon: Icons.directions_walk, color: Colors.teal),
    FeatureModel(title: "Nước", icon: Icons.water_drop, color: Colors.blueAccent),
    FeatureModel(title: "Chi tiêu", icon: Icons.money, color: Colors.green),
    FeatureModel(title: "Quỹ nhóm", icon: Icons.group, color: Colors.pinkAccent),
    FeatureModel(title: "Chứng khoán", icon: Icons.show_chart, color: Colors.pinkAccent),
    FeatureModel(title: "Quỹ nhóm", icon: Icons.confirmation_number, color: Colors.pinkAccent),
    FeatureModel(title: "Xem thêm dịch vụ", icon: Icons.add_circle_outline, color: Colors.pinkAccent),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "MoMo",
            style: TextStyle(
                fontWeight: FontWeight.bold
            ),
            ),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: features.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return FeatureItem(feature: features[index]);
              },
            ),

            const SectionTitle(title: "Sự kiện đang diễn ra"),
            BannerWidget(
                title: "Lắc xì", 
                content: "Tích Lá Lộc càng nhiều Thưởng cuối càng lớn",
                buttonText: "Chơi ngay",
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                    Column(
                    children: [
                        Icon(Icons.account_balance_wallet, size: 40, color: Colors.orange),
                        SizedBox(height: 5),
                        Text("Vay tiền"),
                    ],
                    ),
                    Column(
                    children: [
                        Icon(Icons.movie, size: 40, color: Colors.blue),
                        SizedBox(height: 5),
                        Text("Phim"),
                    ],
                    ),
                    Column(
                    children: [
                        Icon(Icons.account_balance, size: 40, color: Colors.red),
                        SizedBox(height: 5),
                        Text("Ngân hàng"),
                    ],
                    ),
                    Column(
                    children: [
                        Icon(Icons.credit_card, size: 40, color: Colors.purple),
                        SizedBox(height: 5),
                        Text("Thẻ"),
                    ],
                    ),
                ],
            ),

            const SizedBox(height: 20),

            const SectionTitle(title: "Có thể bạn quan tâm"),
            BannerWidget(
                title: "2025 nhờ ai mà nở hoa?",
                content: "Gieo quẻ với AI, tìm quý nhân của bạn",
                buttonText: "Gieo ngay",
                ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: SizedBox(
            height: 60,
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
                Icon(Icons.home, color: Colors.pink),
                Icon(Icons.local_offer, color: Colors.grey),

                SizedBox(width: 50),

                Icon(Icons.history, color: Colors.grey),
                Icon(Icons.person, color: Colors.grey),
            ],
            ),
        ),
        ),
        floatingActionButton: Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.pink,
            ),
            child: const Icon(
                Icons.qr_code,
                color: Colors.white,
                size: 32,
            ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}