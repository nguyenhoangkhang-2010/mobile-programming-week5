import 'package:flutter/material.dart';

class ListViewUsers extends StatefulWidget {
  const ListViewUsers({super.key});

  @override
  State<ListViewUsers> createState() => _ListViewUsersState();
}

class _ListViewUsersState extends State<ListViewUsers> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.home)),
      ),
    );
  }
}