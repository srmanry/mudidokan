import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../controller/login_controller.dart';
import '../custom/custom_textfild.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  Logincontroller logincontroller = Get.put(Logincontroller());
  TextEditingController gmailController = TextEditingController().obs.value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Image(image: AssetImage("assets/images/img.png")),
              const SizedBox(
                height: 10,
              ),

              // IntlPhoneField(
              //   decoration: InputDecoration(
              //     border: OutlineInputBorder(
              //       borderSide: BorderSide(),
              //     ),
              //     labelText: "Phone number",
              //   ),
              // ),
              const IntlPhoneField(
                decoration: InputDecoration(
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderSide: BorderSide(),
                  ),
                ),
                // initialCountryCode: 'IN',
                // onChanged: (phone) {
                //   print(phone.completeNumber);
                // },
              ),

              // Phone Number Fild*************
              // TextFormField(
              //     decoration: InputDecoration(
              //         border:
              //             const OutlineInputBorder(borderSide: BorderSide()),
              //         labelText: "Password",
              //         suffixIcon: Obx(() => IconButton(
              //             onPressed: () {
              //               logincontroller.isvisible();
              //             },
              //             icon: logincontroller.isvisible.value
              //                 ? const Icon(Icons.visibility_off)
              //                 : const Icon(Icons.visibility))))),

              // Text(
              //   decoration: InputDecoration(
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(10)))),
              // ),

              CustomTextfild(controller: gmailController),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                          value: logincontroller.checked,
                          onChanged: (val) {
                            logincontroller.checked == false
                                ? Colors.black
                                : Colors.red;
                          }),
                      const Text("Remember me"),
                    ],
                  ),
                  const Text("Forgot Password ?"),
                ],
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.deepOrange,
                ),
                child: const Center(child: Text("Sign in")),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have account ?"),
                  Text("Sign Up"),
                ],
              ),
              const Text("Social Login"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // CircleAvatar(
                  //   backgroundColor: Colors.white,
                  //   radius: 30,
                  //   child: Center(
                  //     child: Image.asset(
                  //       "assets/images/twit.png",
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Image.asset(
                        "assets/images/goog.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    foregroundImage: AssetImage("assets/images/facebook.png"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
