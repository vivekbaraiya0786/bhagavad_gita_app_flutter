import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/provider/chnagelanaguageprovider.dart';
import '../controller/provider/jsonprovider.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments;



    return (Provider.of<changelanguage>(context).languageModel.lanaguage ==
            false)
        ? Scaffold(
      resizeToAvoidBottomInset: false,
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                     if(index == 0){
                          return Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.arrow_back),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              ),
                              Text(
                                "Chepter   ${Provider.of<JsonProvider>(context, listen: false).chepters[data].id}",
                                style: TextStyle(
                                  color: Colors.orange.shade700,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 270,
                                width: 230,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("${Provider.of<JsonProvider>(context, listen: false).chepters[data].imagee}"),fit: BoxFit.fill
                                  )
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "${Provider.of<JsonProvider>(context, listen: false).chepters[data].name_translation}",
                                style: const TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${Provider.of<JsonProvider>(context, listen: false).chepters[data].chapter_summary}",
                                  style: const TextStyle(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          );
                    }else{
                       final sholkIndex = index - 1;
                       return  ListTile(
                         // leading: IconButton(
                         //   icon: const Icon(Icons.note_alt_outlined,
                         //        size: 30),
                         //   onPressed: () {},
                         // ),
                         title: Padding(
                           padding: const EdgeInsets.only(
                             top: 25,
                           ),
                           child: Text(
                               "Vesre ${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['id']}",
                               style: const TextStyle(

                                   fontWeight: FontWeight.bold,
                                   fontSize: 22)),
                         ),
                         subtitle: Padding(
                           padding: const EdgeInsets.only(
                             top: 15,
                           ),
                           child: Column(
                             children: [
                               const SizedBox(
                                 height: 20,
                               ),
                               Text(
                                 "${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['text']}\n",
                                 style: const TextStyle(

                                     fontSize: 18,
                                     fontWeight: FontWeight.bold),
                               ),
                               const Padding(
                                 padding: EdgeInsets.only(
                                   right: 20,
                                 ),
                                 child: Text("TRANSLITERATION",
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 22,
                                     )),
                               ),
                               const SizedBox(
                                 height: 30,
                               ),
                               Text(
                                 "${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['transliteration']}\n",
                                 style: const TextStyle(
                                   fontSize: 18,
                                 ),
                               ),
                               const Padding(
                                 padding: EdgeInsets.only(
                                   right: 70,
                                 ),
                                 child: Text("TRANSLATION",
                                     style: TextStyle(
                                       fontWeight: FontWeight.bold,
                                       fontSize: 22,
                                     )),
                               ),

                               Text(
                                   "\n${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['descriptione']}",
                                   style: const TextStyle(
                                     fontSize: 22,
                                   )),
                             ],
                           ),
                         ),
                       );
                     }
                  },
                  separatorBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.all(10),
                      child: Divider(
                        thickness: 2,
                      )),
                  // itemCount: Provider.of<JsonProvider>(context).chepters.length,
                  itemCount: 10,
                ),
              ),
            ),
          )
        : Scaffold(
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      if(index == 0){
                        return Column(
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            ),
                            Text(
                              " अध्याय   ${Provider.of<JsonProvider>(context, listen: false).chepters[data].id}",
                              style: TextStyle(
                                color: Colors.orange.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 270,
                              width: 230,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("${Provider.of<JsonProvider>(context, listen: false).chepters[data].imageh}"),fit: BoxFit.fill
                                  )
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              "${Provider.of<JsonProvider>(context, listen: false).chepters[data].name}",
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "${Provider.of<JsonProvider>(context, listen: false).chepters[data].chapter_summary_hindi}",
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        );
                      }else{
                        final sholkIndex = index - 1;
                        return  ListTile(
                          // leading: IconButton(
                          //   icon: const Icon(Icons.note_alt_outlined,
                          //        size: 30),
                          //   onPressed: () {},
                          // ),
                          title: Padding(
                            padding: const EdgeInsets.only(
                              top: 25,
                            ),
                            child: Text(
                                "श्लोक  ${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['id']}",
                                style: const TextStyle(

                                    fontWeight: FontWeight.bold,
                                    fontSize: 22)),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['text']}\n",
                                  style: const TextStyle(

                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                    right: 70,
                                  ),
                                  child: Text("अनुवाद",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                ),

                                Text(
                                    "\n${Provider.of<JsonProvider>(context, listen: false).chepters[data].sholk[index-1]['descriptionh']}",
                                    style: const TextStyle(
                                      fontSize: 22,
                                    )),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                    separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.all(10),
                        child: Divider(
                          thickness: 2,
                        )),
                    // itemCount: Provider.of<JsonProvider>(context).chepters.length,
                    itemCount: 10,
                  ),
                ),
              ),
            ),
          );
  }
}
