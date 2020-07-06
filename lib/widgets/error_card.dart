import 'package:flutter/material.dart';
import 'package:ok_boomer/utilities/constants.dart';

class ErrorCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15.0),
            decoration: BoxDecoration(
                color: kMainGreyColor,
                borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "WORD NOT FOUND!!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    "Maybe a new trend, we'll update ourselves soon ;)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15.0,),
        ]
    );
  }
}
