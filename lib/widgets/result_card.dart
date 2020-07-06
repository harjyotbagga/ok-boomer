import 'package:flutter/material.dart';
import 'package:ok_boomer/utilities/constants.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    Key key,
    @required this.searchResults,
    @required this.index
  }) : super(key: key);

  final List searchResults;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
              color: kMainGreyColor,
              borderRadius: BorderRadius.circular(10.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Definition: ${searchResults[index]['defi']}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 10.0,),
                Text(
                  "Example: ${searchResults[index]['example']}",
                  style: TextStyle(
                    fontFamily: 'Poppins',
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
