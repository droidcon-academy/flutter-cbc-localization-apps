import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Internationalization extends StatefulWidget {
  const Internationalization({super.key, required this.title});

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
            Localizations.override(
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
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
