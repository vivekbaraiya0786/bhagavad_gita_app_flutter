import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../controller/provider/jsonprovider.dart';

class InfromationPage extends StatefulWidget {
  const InfromationPage({Key? key}) : super(key: key);

  @override
  State<InfromationPage> createState() => _InfromationPageState();
}

class _InfromationPageState extends State<InfromationPage> {

  @override
  Widget build(BuildContext context) {
    dynamic data1 = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemCount: 1,itemBuilder: (context, index) => ListTile(
                title: Text(
                    "${Provider.of<JsonProvider>(context, listen: false).chepters[data1].sholk[index]['dis']['descriptionh']}"),
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
