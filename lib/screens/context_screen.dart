import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ok_boomer/utilities/constants.dart';
import 'package:ok_boomer/widgets/result_card.dart';
import 'package:ok_boomer/widgets/error_card.dart';

class ContextScreen extends StatefulWidget {

  final searchContext;
  final searchTerm;
  ContextScreen({this.searchTerm, this.searchContext});

  @override
  _ContextScreenState createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {

  List searchResults;
  String searchTerm;
  int resultLength;

  @override
  void initState() {
    var searchContext = widget.searchContext;
    updateUI(searchContext);
    super.initState();
  }

  void updateUI(dynamic searchContext) {
    resultLength = searchContext['list'].length;
    searchResults = [];
    searchTerm = widget.searchTerm;
    if (resultLength>0) {
      searchTerm = searchContext['list'][0]['word'];
      for (int i = 0; i < resultLength; i++) {
        var result = Map();
        result['defi'] = searchContext['list'][i]['definition'];
        result['example'] = searchContext['list'][i]['example'];
        searchResults.add(result);
      }
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
                  child: GestureDetector(
                    onTap: () {
                      int count = 0;
                      Navigator.of(context).popUntil((context) => count++ >= 2);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: kMainBlueColor,
                      size: 42.0,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      searchTerm.toLowerCase(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'PlayfairDisplay',
                        fontWeight: FontWeight.bold,
                        color: kMainBlueColor,
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            getResults(),
          ],
        ),
      ),
    );
  }

  Widget getResults() {
    if (resultLength > 0) {
      return Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              for (int i = 0; i < searchResults.length; i++) ResultCard(
                  searchResults: searchResults, index: i),
            ],
          ),
        ),
      );
    }
    else {
      return Expanded(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            ErrorCard(),
          ],
        ),
      );
    }
  }


}

