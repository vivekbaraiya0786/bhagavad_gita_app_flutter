import 'package:bhagvat_geeta_mobile_app/controller/provider/jsonprovider.dart';
import 'package:bhagvat_geeta_mobile_app/model/language_model_dart.dart';
import 'package:bhagvat_geeta_mobile_app/utils/apptheme.dart';
import 'package:bhagvat_geeta_mobile_app/views/screens/chepters.dart';
import 'package:bhagvat_geeta_mobile_app/views/screens/details_page.dart';
import 'package:bhagvat_geeta_mobile_app/views/screens/homepage.dart';
import 'package:bhagvat_geeta_mobile_app/views/screens/sholak_page.dart';
import 'package:bhagvat_geeta_mobile_app/views/screens/spalshscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/provider/chnagelanaguageprovider.dart';
import 'controller/provider/themeProvider.dart';
import 'model/thememode.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool changelan = prefs.getBool('languagechange') ?? false;
  bool isdarktheme = prefs.getBool('isdark') ?? false;


  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => JsonProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => changelanguage(
            languageModel: LanguageModel(
              lanaguage: changelan,
            ),
          ),
        ),
        ChangeNotifierProvider(
          create: (context) => ChangeThemeProvider(
            changethemeModel: ChangeThemeModel(isDark: isdarktheme),
          ),
        ),
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'intro',
          theme: AppTheme.lighttheme,
          darkTheme: AppTheme.Darktheme,
          themeMode: (Provider.of<ChangeThemeProvider>(context)
              .changethemeModel
              .isDark ==
              false)
              ? ThemeMode.light
              : ThemeMode.dark,
          routes: {
            '/': (context) => Homepage(),
            'chepter': (context) => Chepter(),
            'sholak': (context) => Shoalakpage(),
            'InfromationPage': (context) => InfromationPage(),
            'intro': (context) => intro_page(),
          },
        );
      },
    ),
  );
}
