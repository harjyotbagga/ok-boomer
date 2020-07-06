import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ok_boomer/utilities/constants.dart';
import 'package:ok_boomer/widgets/result_card.dart';

class ContextScreen extends StatefulWidget {

  final searchContext;
  ContextScreen({this.searchContext});

  @override
  _ContextScreenState createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {

  List searchResults;
  String searchTerm;

  @override
  void initState() {
    var searchContext = widget.searchContext;
    updateUI(searchContext);
    super.initState();
  }

  void updateUI(dynamic searchContext) {
    int resultLength = searchContext['list'].length;
    searchResults = [];
    searchTerm = searchContext['list'][0]['word'];
    for (int i=0 ; i<min(resultLength,3) ; i++) {
      var result = Map();
      result['defi'] = searchContext['list'][i]['definition'];
      result['example'] = searchContext['list'][i]['example'];
      searchResults.add(result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: FlatButton(
                    onPressed: () {
                      int count = 0;
                      Navigator.of(context).popUntil((context) => count++ >= 2);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kMainBlueColor,
                      size: 50.0,
                    ),
                  ),
                ),
                Text(
                  searchTerm.toLowerCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                    color: kMainBlueColor,
                    fontSize: 42.0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25.0,
            ),
            for (int i=0; i< searchResults.length; i++) ResultCard(searchResults: searchResults, index: i),
          ],
        ),
      )
    );
  }
}

