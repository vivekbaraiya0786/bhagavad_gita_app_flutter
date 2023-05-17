import 'package:bhagvat_geeta_mobile_app/controller/provider/jsonprovider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../componets/firsthindi_page.dart';
import '../../controller/provider/chnagelanaguageprovider.dart';
import '../../controller/provider/themeProvider.dart';

class Chepter extends StatefulWidget {
  const Chepter({Key? key}) : super(key: key);

  @override
  State<Chepter> createState() => _ChepterState();
}

class _ChepterState extends State<Chepter> {
  @override
  void initState() {
    super.initState();
    getdata();
  }

  Future<void> getdata() async {
    await Provider.of<JsonProvider>(context, listen: false).FormJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Bhagavad Gita",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                Provider.of<ChangeThemeProvider>(context, listen: false)
                    .chnageTheme();
              },
              icon: Icon(
                (Provider.of<ChangeThemeProvider>(context)
                        .changethemeModel
                        .isDark)
                    ? Icons.light_mode_outlined
                    : Icons.dark_mode,
              ),
            ),
            IconButton(
                onPressed: () {
                  Provider.of<changelanguage>(context, listen: false)
                      .changeApp();
                },
                icon: Icon(
                  Icons.language,
                ))
          ],
        ),
        backgroundColor: Colors.white,
        body: hindienglishpage());
  }
}
