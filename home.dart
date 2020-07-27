import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

/*
MyApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Social media apps'),
      ),
    ),
  );
}
*/

MyApp() {
  press_for_search() {
    Fluttertoast.showToast(
        msg: "Searched | LinkedIn |",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_RIGHT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red[100],
        textColor: Colors.black,
        fontSize: 16.0);
  }

  FlutterStatusbarcolor.setStatusBarColor(Colors.blueGrey);

  var mybody = Container(
    width: 250,
    height: 280,
    //color: Colors.yellow,
    alignment: Alignment.bottomCenter,
    child: Column(
      children: <Widget>[
        Image.network(
            'https://github.com/prakhar1508/flutter_hot_reload/raw/master/logo.png'),
        Text('Prakhar Manak Bohara'),
        Text('prakhar-manak-bohara-8a942418b'),
      ],
    ),
    decoration: BoxDecoration(
        color: Colors.blue.shade300,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          width: 5,
          color: Colors.white54,
        )),
  );

  // ignore: non_constant_identifier_names
  /*
  press_for_search() {
    print("search button pressed...");
  }
  */

  var iconforsearch = Icon(Icons.search);
  var searchbutton =
      IconButton(icon: iconforsearch, onPressed: press_for_search);

  var myhome = Scaffold(
    backgroundColor: Colors.blue[100],
    appBar: AppBar(
      title: Text(
        'Social Media Apps',
        style: TextStyle(color: Colors.grey),
      ),
      backgroundColor: Colors.black,
      actions: <Widget>[searchbutton],
    ),
    body: Center(
      child: mybody,
    ),
  );
  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
