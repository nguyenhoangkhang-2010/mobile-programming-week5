import 'package:flutter/material.dart';
import 'package:app_week5/models/major.dart';
import 'package:app_week5/widget/major_item.dart';
import 'package:app_week5/widget/topic_button.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Major> majors = [
    Major(
      title: "Công nghệ phần mềm",
      description: "Phát triển các ứng dụng giải quyết các vấn đề thực tế",
    ),
    Major(
      title: "Hệ thống thông tin",
      description: "Phát triển các kỹ thuật xử lý thông tin trong tổ chức",
    ),
    Major(
      title: "Mạng máy tính",
      description: "Xử lý các vấn đề liên quan đến mạng máy tính",
    ),
    Major(
      title: "An toàn thông tin",
      description: "Thiết kế và đảm bảo an toàn cho hệ thống",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        backgroundColor: Colors.orange,
        leading: const Icon(Icons.home),
      ),

      body: Column(
        children: [
          // Section 1
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: const Text(
              "Chọn loại đề tài",
              style: TextStyle(color: Colors.white),
            ),
          ),

          // Buttons
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                TopicButton(text: "Đồ án"),
                TopicButton(text: "KLKS"),
                TopicButton(text: "Luận văn"),
                TopicButton(text: "Khác"),
              ],
            ),
          ),

          // Section 2
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: const Text(
              "Chọn chuyên ngành thực hiện",
              style: TextStyle(color: Colors.white),
            ),
          ),

          // List
          Expanded(
            child: ListView.builder(
              itemCount: majors.length,
              itemBuilder: (context, index) {
                return MajorItem(major: majors[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}