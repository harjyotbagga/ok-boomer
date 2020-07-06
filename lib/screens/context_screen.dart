import 'package:flutter/material.dart';
import 'package:ok_boomer/utilities/constants.dart';

class ContextScreen extends StatefulWidget {

  final searchContext;
  ContextScreen({this.searchContext});

  @override
  _ContextScreenState createState() => _ContextScreenState();
}

class _ContextScreenState extends State<ContextScreen> {

  @override
  void initState() {
    var searchContext = widget.searchContext;
    updateUI(searchContext)
//    print(searchContext.toString());
//    print(searchContext.runtimeType);
    super.initState();
  }

  void updateUI(dynamic searchContext) {
    setState(() {
      // TODO: Initialize and update variables accrodingly
      // TODO: Update UI Accordingly
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
            Center(
              child: Text(
                'Received',
                //searchContext
              ),
            )
          ],
        ),
      )
    );
  }
}
