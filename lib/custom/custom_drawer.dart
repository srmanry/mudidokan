import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Colors.amber,
            height: Get.height * 0.08,
            child: const Text("User Name"),
          ),
          const ListTile(
            title: Text("Home"),
          ),
          const ListTile(
            title: Text("Home"),
          ),
          const ListTile(
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}
