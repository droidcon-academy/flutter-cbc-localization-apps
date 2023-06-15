import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_internationalization_localization/internationalization.dart';
import 'package:flutter_internationalization_localization/localization.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.lightBlueAccent,
              width: 300,
              height: 50,
              child: InkWell(child: Center(child: Text("Internationalization Example", style: TextStyle(color: Colors.white),),), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Internationalization(title: "Internationalization Example")));
              },),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.lightBlueAccent,
              width: 300,
              height: 50,
              child: InkWell(child: Center(child: Text("Localization Example ( Login Screen )", style: TextStyle(color: Colors.white)),), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Localization()));
              },),
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
