import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider/chnagelanaguageprovider.dart';
import '../controller/provider/jsonprovider.dart';

class hindienglishpage extends StatefulWidget {
  const hindienglishpage({Key? key}) : super(key: key);

  @override
  State<hindienglishpage> createState() => _hindienglishpageState();
}

class _hindienglishpageState extends State<hindienglishpage> {
  @override
  Widget build(BuildContext context) {
    return (Provider.of<changelanguage>(context)
        .languageModel
        .lanaguage ==
        false)
        ?Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text("Chapters",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
                    ),
                    IconButton(onPressed: () {

                    }, icon: const Icon(Icons.arrow_downward))
                  ],
                ),
              )),
          Expanded(
            flex: 17,
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("sholak",arguments: index);
                  print("${Provider.of<JsonProvider>(context,listen: false).chepters[index].name}");
                },
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    "${Provider.of<JsonProvider>(context,listen: false).chepters[index].id}",
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                title: Text("   ${Provider.of<JsonProvider>(context,listen: false).chepters[index].name_translation}"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {
                    }, icon: const Icon(Icons.menu_outlined)),
                    Text("${Provider.of<JsonProvider>(context,listen: false).chepters[index].verses_count}  Verse"),

                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                  onPressed: () {
                    Navigator.of(context).pushNamed("sholak",arguments: index);
                  },
                ),
              ),
              separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.all(10),child: Divider(thickness: 2,)),
              itemCount: Provider.of<JsonProvider>(context).chepters.length,
            ),
          ),
        ],
      ),
    )
        :Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 25,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Text("अध्याय",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold)),
                    ),
                    IconButton(onPressed: () {

                    }, icon: const Icon(Icons.arrow_downward))
                  ],
                ),
              )),
          Expanded(
            flex: 17,
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  Navigator.of(context).pushNamed("sholak",arguments: index);
                  print("${Provider.of<JsonProvider>(context,listen: false).chepters[index].name}");
                },
                leading: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(color: Colors.orange.shade50,borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  child: Text(
                    "${Provider.of<JsonProvider>(context,listen: false).chepters[index].id}",
                    style: const TextStyle(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                title: Text("   ${Provider.of<JsonProvider>(context,listen: false).chepters[index].name}"),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {
                    }, icon: const Icon(Icons.menu_outlined)),
                    Text("${Provider.of<JsonProvider>(context,listen: false).chepters[index].verses_count}  श्लोक"),
                  ],
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios_sharp),
                  onPressed: () {
                    Navigator.of(context).pushNamed("sholak",arguments: index);
                  },
                ),
              ),
              separatorBuilder: (context, index) => const Padding(padding: EdgeInsets.all(10),child: Divider(thickness: 2,)),
              // itemCount:Provider.of<JsonProvider>(context).chepters.length,
              itemCount: Provider.of<JsonProvider>(context).chepters.length,
            ),
          ),
        ],
      ),
    );
  }
}
