import 'package:flutter/material.dart';

import 'custom/custom_bottom.dart';
import 'custom/custom_textfild.dart';

class CustomLogin extends StatefulWidget {
  const CustomLogin({super.key});

  @override
  State<CustomLogin> createState() => _CustomLoginState();
}

class _CustomLoginState extends State<CustomLogin> {
  TextEditingController emailcontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  TextEditingController phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/fgp.png"),
              const SizedBox(
                height: 20,
              ),
              const Text("Login"),
              CustomTextfild(
                controller: emailcontroller,
                hinText: "email",
              ),
              const CustomBottom(
                  color: Colors.amber,
                  text: Text(
                    "Bottom 1 ",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )),
              const CustomBottom(
                color: Colors.green,
                // text: Text(
                //   "Bottom 2 ",
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
