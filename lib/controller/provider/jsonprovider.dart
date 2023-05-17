import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import '../../model/chepter_model.dart';

class JsonProvider extends ChangeNotifier{
  List<dynamic> chepters = [];

  Future<void> FormJson() async {
    String data = await rootBundle.loadString("assets/json/verse.json");

    var decodeList = jsonDecode(data);

    chepters =
        decodeList.map((e) => Chapters.frommap(data1: e)).toList();
    notifyListeners();
  }
}