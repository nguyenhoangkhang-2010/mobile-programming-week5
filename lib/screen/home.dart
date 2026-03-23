import 'package:app_week5/screen/listviewuser.dart';
import 'package:app_week5/screen/momo_screen.dart';
import 'package:app_week5/screen/voucher_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_week5/models/major.dart';
import 'package:app_week5/widget/major_item.dart';
import 'package:app_week5/widget/topic_button.dart';
import '../widget/nav_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void goToListView(BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (_) => ListViewUser(),
      ),
    );
  }

  void goToMoMo(BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (_) => MomoScreen()));
  }

  void goToVoucher(BuildContext context){
    Navigator.push(
      context, 
      MaterialPageRoute(builder: (_) => VoucherScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Trang chủ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(title: "Bài 1", onPressed: () => goToListView(context)),
            NavButton(title: "Bài 2", onPressed: () => goToMoMo(context)),
            NavButton(title: "Bài 3", onPressed: () => goToVoucher(context))
          ],
        ),
      ),
    );
  }
}