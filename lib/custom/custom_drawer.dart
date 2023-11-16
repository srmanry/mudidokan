import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customrawer extends StatelessWidget {
//  const CustomDrawer({super.key});
  List drawertitelList = [""];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            // height: Get.height * 0.2,
            height: Get.height * 0.40,
          ),
          // const ListTile(
          //   title: Text("Thems"),
          //   trailing: Icon(Icons.person),
          // ),
          Expanded(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: (_, index) {
                    return const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text("List Titele"),
                          leading: Icon(Icons.person),
                          trailing: Icon(Icons.arrow_forward),
                        ),
                      ),
                    );
                  })),
        ],
      ),
    );
  }
}
