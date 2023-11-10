import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../style.dart';
import 'custom_drawer.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Icon? drawer;
  final String? appbartitle;
  final Widget? actionIcon;
  final Color? appbarcolor;
  final Widget? shadowcolor;

  const CustomAppbar(
      {super.key,
      this.drawer,
      this.appbartitle,
      this.appbarcolor,
      this.actionIcon,
      this.shadowcolor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.to(const DrawerScreen());
            },
            child: Container(
              decoration: BoxDecoration(
                  color: appbarcolor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3))
                  ]),
              child: drawer,
            ),
          ),
          Text("মুদি দোকান",
              style: robotoBold.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold)),
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  //border: Border.all(width: 1, color: Colors.black),
                  color: appbarcolor,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.red,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 2))
                  ]),
              child: actionIcon,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
