import 'package:flutter/material.dart';
import 'package:inherited_widget/inherit.dart';

import 'data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Inherit(
        child:MaterialApp(
              home: Home(),
              theme: ThemeData(primaryColor : Colors.tealAccent ),
          ),
        database: Data());
  }
}

class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {

    Color primaryColor = Theme.of(context).primaryColor;
    var data = Inherit.of(context).database;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text(data.Name()),
            Text(data.Phone()),
          ],
        ),
      ),
    );
  }

}