import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/language_model_dart.dart';

class changelanguage extends ChangeNotifier{
  LanguageModel languageModel;

  changelanguage({required this.languageModel});


  changeApp()async{
    languageModel.lanaguage = !languageModel.lanaguage;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('languagechange', languageModel.lanaguage);
    notifyListeners();
  }
}