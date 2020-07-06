import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ok_boomer/screens/loading_screen.dart';
import 'package:ok_boomer/utilities/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String searchTerm;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 22.0),
            decoration: BoxDecoration(
              color: kMainBlueColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    "Enter Word Here",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'PlayfairDisplay',
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: 40.0,

                          child: TextField(
                            textAlignVertical: TextAlignVertical.bottom,
                            decoration: kSearchInputFieldDecoration,
                            onChanged: (value) {
                              searchTerm = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return LoadingScreen(searchTerm: searchTerm);
                          }));
                        },
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
}
