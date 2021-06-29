import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:glorify/helpers/Providers/chooseLanguageprovider.dart';
import 'package:glorify/helpers/constants.dart';
import 'package:glorify/helpers/methods/SharedPreferences.dart';
import 'package:glorify/screens/WelcomeScreen.dart';
import 'package:provider/provider.dart';

class ChooseLanguageWidget extends StatelessWidget {
  const ChooseLanguageWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Material(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Container(
              padding: EdgeInsets.all(
                10.0,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/logo.png',
                      width: 250.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Consumer<ChooseLanguage>(
                    builder: (context, language, child) => Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Please select your Language'),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('कृपया अपनी भाषा चुनें'),
                        SizedBox(
                          height: 10.0,
                        ),
                        GestureDetector(
                          onTap: () {
                            language.changeLanguage(
                                language: LanguageChoosen.ENGLISH);
                            navigateToWelcomeScreen(context, language.language);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'English',
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            language.changeLanguage(
                                language: LanguageChoosen.HINDI);
                            navigateToWelcomeScreen(context, language.language);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Hindi',
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            language.changeLanguage(
                                language: LanguageChoosen.MARATHI);
                            navigateToWelcomeScreen(context, language.language);
                          },
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              'Marathi',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void navigateToWelcomeScreen(
      BuildContext context, LanguageChoosen language) async {
    print(language.toString());
    setBooleanIntoCache(SHOW_CHOOSE_LANGUAGE, false);
    setLanguageIntoCache(language);
    Navigator.pushReplacement(
      context,
      CupertinoPageRoute(
        builder: (context) => WelcomeScreenWidget(),
      ),
    );
  }
}
