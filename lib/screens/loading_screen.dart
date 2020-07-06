import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ok_boomer/screens/context_screen.dart';
import 'package:ok_boomer/utilities/constants.dart';
import 'package:ok_boomer/services/get_meaning.dart';

class LoadingScreen extends StatefulWidget {

  String searchTerm;
  LoadingScreen({this.searchTerm});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}


class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    print("On Loading Screen");
    String searchTerm = widget.searchTerm;
    getMeaning(searchTerm);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          color: kMainBlueColor,
          size: 70.0,
        ),
      ),
    );
  }


  void getMeaning(var searchTerm) async {
    print(searchTerm);
    // TODO: get the meaning of the search term.
    // TODO: Test without net and see background loading
    var searchContext;
    searchContext = await APICalls().getMeaning();
    // var searchContext = await .....
    print(searchContext);
    await Navigator.push(context, MaterialPageRoute(
        builder: (context) {
          return ContextScreen(searchContext: searchContext);
        }));
  }

}