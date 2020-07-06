import 'package:flutter/material.dart';


const kMainBlueColor = Color(0xFF1473E6);
const kMainGreyColor = Color(0xFFB2B2B2);

const kSearchInputFieldDecoration = InputDecoration(
    fillColor: Colors.white,
    filled: true,
    contentPadding: EdgeInsets.only(bottom: 15),
    prefixIcon: Icon(
      Icons.search,
      color: kMainGreyColor,
    ),
    hintText: '\'Enter word here...\'',
    hintStyle: TextStyle(
      color: kMainGreyColor,
      fontStyle: FontStyle.italic,
      fontFamily: 'Poppins',
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    )
);