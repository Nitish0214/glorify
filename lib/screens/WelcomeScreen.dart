import 'package:flutter/material.dart';

class WelcomeScreenWidget extends StatelessWidget {
  const WelcomeScreenWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: Text('This is Welcome Screen'),
          onPressed: () => showSelectCityAndSocietyDialog()),
    );
  }

  void showSelectCityAndSocietyDialog() {
    //TODO: Implement this function.
  }
}
