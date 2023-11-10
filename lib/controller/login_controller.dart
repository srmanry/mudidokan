import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Logincontroller extends GetxController {
  TextEditingController gmailController = TextEditingController().obs.value;
  final RxBool isvisible = false.obs;
  bool checked = true;
  void visible() {
    isvisible.value = !isvisible.value;
  }
}
