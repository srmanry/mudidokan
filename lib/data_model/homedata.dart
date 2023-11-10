import 'package:flutter/material.dart';

class Homedata {
  Color? color;
  String? image;
  String? name;
  String? price;
  Homedata({this.color, this.image, this.name, this.price});
}

List<Homedata> productlist = [
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/alu.jpg",
      price: "৳- ৩০",
      name: "আলু"),
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/bagun.jpeg",
      price: "৳- ৬০",
      name: "বেগুন"),
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/fulcopy.jpg",
      price: "৳- ৬০",
      name: "ফুলকপি"),
  // Homedata(
  //     color: Colors.amber,
  //     image: "assets/vigitable/patacopy.jpg",
  //     price: "৳- ৫৫",
  //     name: "বাধা কপি"),
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/payaj.jpg",
      price: "৳- ৬০",
      name: "পেয়াজ"),
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/rosun.jpg",
      price: "৳- ২০",
      name: "রসুন"),
  Homedata(
      color: Colors.amber,
      image: "assets/vigitable/tomato.jpg",
      price: "৳- ৫০",
      name: "টমেটো"),
];
