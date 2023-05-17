import 'dart:convert';

import 'package:bhagvat_geeta_mobile_app/model/student_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String? data;

  List<Student> students = [];

  @override
  void initState() {
    super.initState();
    loadJSON();
  }

  Future<void> loadJSON()async{
    data = await rootBundle.loadString("assets/json/students.json");
  }

  // Map decodedata = {};

  // Student? s1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              List decodeList = jsonDecode(data!);
              setState(() {
                // decodedata = jsonDecode(data);
                // print(decodedata["id"]);
                // print(decodedata["name"]);
                // print(decodedata["age"]);
                // print(decodedata["course"]);

                //  s1 = Student.frommap(data: jsonDecode(data));
                //
                // print(s1!.id);
                // print(s1!.name);
                // print(s1!.age);
                // print(s1!.course);
                students = decodeList.map((e) => Student.frommap(data: e)).toList();
              });
            },
            icon: Icon(Icons.change_circle),
          ),
        ],
      ),
      // body: (s1 == null)
      //     ? Text("No data available")
      //     : Column(
      //         children: [
      //           // Text("${s1!.id}"),
      //           // Text("${s1!.name}"),
      //           // Text("${s1!.age}"),
      //           // Text("${s1!.course}"),
      //           Text("${students[i].id}")
      //         ],
      //       ),
      body: Container(
        alignment: Alignment.center,
        child: (students.isEmpty)
        ?Text("No data available")
        :ListView.builder(itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              leading: Text("${students[index].id}"),
              title: Text("${students[index].name}"),
              subtitle: Text("${students[index].age}"),
              trailing: Text("${students[index].course}"),
            ),
          );
        },
       itemCount: students.length,
    ),
      ),
    );
  }
}
