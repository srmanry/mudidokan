import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductViewScreen extends StatelessWidget {
  // const ProductViewScreen({super.key});
  var textstyle = const TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black);
  var headingtextstyle = const TextStyle(
      fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Image.asset(
              "assets/images/pizz.png",
              height: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 8.0),
              child: Text(
                "Pizza Hut Adabor",
                style: headingtextstyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "\$ 300",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 35,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Delivary: 300",
                        style: textstyle,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "-",
                      style: headingtextstyle,
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "+",
                      style: headingtextstyle,
                    )),
              ],
            ),
            Text(
              "Ditiles",
              style: headingtextstyle,
            ),
            Text(
              """"Enjoy lucrative discounts on mouth-watering menu items & buy 26% OFF+BUY 1 GET 1Enjoy lucrative discounts on mouth-watering menu items & buy 1 get 1 offer on selected items!""",
              style: textstyle,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: Get.width * .3,
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
