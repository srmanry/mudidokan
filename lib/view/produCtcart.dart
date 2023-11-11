import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCartScreen extends StatefulWidget {
  const ProductCartScreen({super.key});

  @override
  State<ProductCartScreen> createState() => _ProductCartScreenState();
}

class _ProductCartScreenState extends State<ProductCartScreen> {
  // const ProductCartScreen({super.key});
  List productList = [
    "Pizza",
    "Barger",
    "Pizza",
    "Barger",
    "Pizza",
    "Barger",
  ];

  var textstyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text("Your Cart"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: Get.height * 1,
            child: ListView.builder(
                itemCount: productList.length,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: Get.height * 0.15,
                      color: Colors.amber,
                    ),
                  );
                }),
          ),
          Container(
            height: 50,
            width: double.maxFinite,
            color: Colors.green,
            child: const Text("Pay NEW"),
          )
        ],
      ),
    );
  }
}
