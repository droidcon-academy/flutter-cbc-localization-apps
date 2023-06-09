import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// A StatefulWidget that handles localization and login functionality.
class Localization extends StatefulWidget {
  const Localization({Key? key}) : super(key: key);

  @override
  State<Localization> createState() => _LocalizationState();
}

class _LocalizationState extends State<Localization> {
  /// Define variables for email and password
  String email = '';
  String password = '';

  /// Builds the login page UI.
  Widget loginPage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            AppLocalizations.of(context)!.enterEmail,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          SizedBox(height: 16.0),
          Text(
            AppLocalizations.of(context)!.enterPassword,
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 8.0),
          TextFormField(
            obscureText: true,
            onChanged: (value) {
              setState(() {
                password = value;
              });
            },
          ),
          SizedBox(height: 24.0),
          ElevatedButton(
            onPressed: () {
              // Perform login logic here
            },
            child: Text(AppLocalizations.of(context)!.loginButton),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.loginScreenTitle),
      ),
      body: loginPage(context),
    );
  }
}
