import 'package:flutter/foundation.dart';
import 'package:glorify/helpers/constants.dart';

class ChooseLanguage extends ChangeNotifier {
  LanguageChoosen language;

  ChooseLanguage({this.language = LanguageChoosen.ENGLISH});

  changeLanguage({@required LanguageChoosen language}) {
    this.language = language;
    notifyListeners();
  }
}
