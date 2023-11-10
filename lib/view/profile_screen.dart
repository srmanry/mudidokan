import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Resturentprofile extends StatelessWidget {
  const Resturentprofile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.green,
          // appBar: AppBar(
          //   title: const Text("Resturen Profile"),
          // ),
          body: Stack(
            children: [
              Container(
                height: Get.height * 0.40,
                color: Colors.pink,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    //  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Colors.white,
                              )),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      const Text(
                        "Resturent Name",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              profileCard()
            ],
          )),
    );
  }
}

profileCard() {
  List cartlist = [
    "Stock Food",
    "New Order",
    "Past Order",
    "Daly Report",
    "Edit Profile",
    "Setting"
  ];
  List<dynamic> listicon = [
    "assets/images/daliver.png",
    "assets/images/daliver.png",
    "assets/images/daliver.png",
    "assets/images/daliver.png",
    "assets/images/cart.png",
    "assets/images/setting.png",
  ];
  return DraggableScrollableSheet(
      //minChildSize: 0.6,
      initialChildSize: 0.7,
      //maxChildSize: 1.0,
      builder: (_, scrollController) {
        return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: GridView.builder(
                itemCount: cartlist.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 236, 226, 226)),
                      child: Column(
                        children: [
                          Image.asset(
                            listicon[index],
                            height: 100,
                            width: 60,
                          ),
                          Text(cartlist[index])
                        ],
                      ),
                    ),
                  );
                }));
      });
}
