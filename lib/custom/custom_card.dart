import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final double? cardheight;
  final Color? cardcolors;
  const CustomCard({super.key, this.cardheight, this.cardcolors});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: Get.height*,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }
}
