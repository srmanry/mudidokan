import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'custom/cust_appbar.dart';
import 'data_model/homedata.dart';
import 'style.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List catgoryColor = [
    const Color(0xff4DA2F5),
    const Color(0xffD5F0C7),
    const Color(0xffFDD687),
    const Color(0xff19504A),
    const Color(0xff9DC6CA),
    const Color(0xffE24F96),
    const Color(0xffC6E2F7),
  ];
  List catagoryimg = [
    "assets/catagory/c3.png",
    "assets/catagory/c2.png",
    "assets/catagory/c3.png",
    "assets/catagory/c4.png",
    "assets/catagory/c5.png",
    "assets/catagory/c6.png",
    "assets/catagory/c7.png",
  ];
  List catagorynamelist = [
    "সবজী",
    "পেস্ট",
    "ব্রাস",
    "তেল",
    "সবান",
    "পেস্ট",
    "ব্রাস",
    "চাল",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.06,
              ),
              const CustomAppbar(
                drawer: Icon(Icons.menu),
                actionIcon: Icon(Icons.notifications),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.maxFinite,
                  height: Get.height * 0.20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      //  color: const Color(0xffEA82B7),
                      // color: const Color(0xffFDD687),
                      borderRadius: BorderRadius.circular(10)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        "assets/images/discount.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // child: Image.network(
                  //     "https://img.freepik.com/premium-photo/two-smiling-beautiful-girls-have-discount-up-70-sign-with-colorful-shopping-bags-signal-tape-isolated-yellow_97712-1523.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699228800&semt=ais"),
                ),
              ),
              const Divider(
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: Get.height * 0.15,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: catgoryColor.length,
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            width: Get.width * 0.20,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: catgoryColor[index],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  catagoryimg[index],
                                  height: 50,
                                  width: 60,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  catagorynamelist[index],
                                  style: robotoMedium.copyWith(
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Catagorys",
                      style:
                          robotoBold.copyWith(color: Colors.teal, fontSize: 18),
                    ),
                    Text("See All",
                        style: robotoMedium.copyWith(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: GridView.builder(
                      itemCount: productlist.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 5,
                              crossAxisSpacing: 5,
                              childAspectRatio: 5 / 6),
                      itemBuilder: (_, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            shadowColor: Colors.black,
                            elevation: 5,
                            child: Container(
                              // height: 100,
                              // width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  //color: catgoryColor[index],
                                  color: const Color(0xffF0F0F4)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(10),
                                        topLeft: Radius.circular(10)),
                                    child: Image.asset(
                                      "${productlist[index].image}",
                                      fit: BoxFit.contain,
                                      // "assets/vigitable/alu.jpg",
                                      //  height: 100,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      "${productlist[index].name}",
                                      style: robotoMedium.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "দাম -",
                                          style: robotoMedium.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "${productlist[index].price} কে.জি",
                                          style: robotoMedium.copyWith(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          height: 30,
                                          // width: 50,
                                          decoration: const BoxDecoration(
                                              // border: Border.all(
                                              //     width: 1, color: Colors.black),
                                              color: Color.fromARGB(
                                                  255, 109, 185, 247),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10))
                                              // borderRadius:
                                              //     BorderRadius.circular(5),
                                              //boxShadow: const [
                                              //   BoxShadow(
                                              //       color: Colors.red,
                                              //       spreadRadius: 2,
                                              //       blurRadius: 10,
                                              //       offset: Offset(0, 3))
                                              // ]
                                              ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(4.0),
                                            child: Center(
                                                child: Text(
                                              "কিনুন",
                                              style: robotoMedium.copyWith(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        ),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                          ))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: GNav(
              rippleColor: Colors.grey, // tab button ripple color when pressed
              hoverColor: Colors.lightGreen, // tab button hover color
              haptic: true, // haptic feedback
              //tabBorderRadius: 15,
              tabActiveBorder: Border.all(color: Colors.black, width: 1),
              tabBorder: Border.all(color: Colors.grey, width: 1),
              tabShadow: [
                BoxShadow(color: Colors.pink.withOpacity(0.0), blurRadius: 8)
              ], // tab button shadow
              curve: Curves.easeOutExpo, // tab animation curves
              duration: const Duration(milliseconds: 900),
              gap: 8,
              //  color: Colors.white,
              activeColor: Colors.teal,
              iconSize: 24, // tab button icon size
              // tabBackgroundColor: Colors.purple.withOpacity(0.1),
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 5), // navigation bar padding
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.heart_broken,
                  text: 'Likes',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                )
              ]),
        ));
  }
}
