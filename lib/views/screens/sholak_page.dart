import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../componets/secondpage.dart';
import '../../controller/provider/jsonprovider.dart';

class Shoalakpage extends StatefulWidget {
  const Shoalakpage({Key? key}) : super(key: key);

  @override
  State<Shoalakpage> createState() => _ShoalakpageState();
}

class _ShoalakpageState extends State<Shoalakpage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body:secondpage(),
      backgroundColor: Colors.white,
    );
  }
}
