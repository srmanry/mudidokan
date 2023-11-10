import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String? aappbarText;
  const CustomText({super.key, this.aappbarText});

  @override
  Widget build(BuildContext context) {
    return Text(aappbarText!);
  }
}
