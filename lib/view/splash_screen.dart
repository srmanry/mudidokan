import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Center(
          //     child: Image.asset(
          //   "assets/images/mudidokan.png",
          //   height: 300,
          //   //width: 100,
          // )),
          // const SizedBox(
          //   height: 20,
          // ),
          Center(
            child: Text(
              'মুদি দোকান',
              style: TextStyle(
                  fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
