import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// A StatefulWidget that handles internationalization and displays a calendar picker widget.
class Internationalization extends StatefulWidget {
  const Internationalization({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Internationalization> createState() => _InternationalizationState();
}

class _InternationalizationState extends State<Internationalization> {

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
            // Add the following code
            calendarPicker(),
          ],
        ),
      ),
    );
  }
}
