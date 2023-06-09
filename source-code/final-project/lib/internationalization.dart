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

  /// Builds a calendar picker widget with a specific locale.
  Widget calendarPicker(){
    return Localizations.override(
      context: context,
      locale: const Locale('es'),
      // Using a Builder to get the correct BuildContext.
      // Alternatively, you can create a new widget and Localizations.override
      // will pass the updated BuildContext to the new widget.
      child: Builder(
        builder: (context) {
          // A toy example for an internationalized Material widget.
          return CalendarDatePicker(
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2100),
            onDateChanged: (value) {},
          );
        },
      ),
    );
  }


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
