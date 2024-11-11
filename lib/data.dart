import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

List<String> menuimage = [
  "assets/herbal.jpeg",
  "assets/Fruit Salad.png",
  "assets/Green noddle.png",
];
List<String> menutext = [
  "Herbal Pancake",
  "Fruit Salad",
  "Green noddle",
];
List<String> menusubtext = [
  "Warung Herbal",
  "Wijie Resto",
  "Noodle Home",
];
List<int> menuprice = [
  7,
  5,
  15,
];
List<Map> menu = [
  {
    "image": menuimage[0],
    "text": menutext[0],
    "subtext": menusubtext[0],
    "price": menuprice[0],
  },
  {
    "image": menuimage[1],
    "text": menutext[1],
    "subtext": menusubtext[1],
    "price": menuprice[1],
  },
  {
    "image": menuimage[2],
    "text": menutext[2],
    "subtext": menusubtext[2],
    "price": menuprice[2],
  },
];
var allprice = 0;
List<Map> card_items = [];
XFile? image;
