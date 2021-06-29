import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glorify/Theme.dart';
import 'package:glorify/helpers/Providers/chooseLanguageprovider.dart';
import 'package:glorify/screens/ChooseLanguageScreen.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ChooseLanguage()),
    ],
    child: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      child: MaterialApp(
        title: 'Flutter Management iOS',
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        home: ScreenRedirector(),
      ),
    ),
  ));
}

// This widget redirects to specified screen.

class ScreenRedirector extends StatelessWidget {
  const ScreenRedirector({Key key}) : super(key: key);

//TODO build this method to redirect to other screens.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("This is screen redirector."),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => ChooseLanguageWidget(),
                    )),
                child: Text("OK"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
