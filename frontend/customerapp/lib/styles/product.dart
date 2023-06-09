import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final priceTextStyleProduct = TextStyle(
    fontWeight: FontWeight.normal, color: Color(0xFF4a4a4a), fontSize: 18);
final descriptionTextStyleProduct =
    TextStyle(fontWeight: FontWeight.normal, color: Colors.black, fontSize: 15);

final titleStyleProduct =
    TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 22);

final restaurantTitleStyle =
    TextStyle(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 48);

final cartTitleStyle =
    TextStyle(fontWeight: FontWeight.w500, color: Colors.black, fontSize: 28);

final cartTimeFeeStyle = TextStyle(color: Colors.black, fontSize: 16);

final numberItemsCartStyle = TextStyle(color: Colors.black, fontSize: 15);

final totalPriceCartStyle = TextStyle(
    color: Color(0xFF4A4A4A), fontSize: 18, fontWeight: FontWeight.w600);

final makeOrderButtonStyle = ButtonStyle(
    padding: MaterialStateProperty.resolveWith((states) =>
        const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0)),
    foregroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
    textStyle: MaterialStateProperty.resolveWith((states) => TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
    shape: MaterialStateProperty.resolveWith((states) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(32.0),
        side: BorderSide(color: Color(0xFF2ABB9B)))),
    backgroundColor:
        MaterialStateColor.resolveWith((states) => Color(0xFF2ABB9B)));

final emptyCartLabel = TextStyle(
    fontWeight: FontWeight.w300, color: Color(0xFFCACACA), fontSize: 20);
