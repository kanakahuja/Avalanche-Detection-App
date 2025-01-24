import 'package:flutter/material.dart';

class HomeMapsPractise extends StatefulWidget {
  const HomeMapsPractise({Key? key}) : super(key: key);

  @override
  State<HomeMapsPractise> createState() => _HomeMapsPractiseState();
}

class _HomeMapsPractiseState extends State<HomeMapsPractise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("integrating maps"),),
      // body:FlutterMap(options: MapOptions(adaptiveBoundaries: true,screenSize: Size.infinite,zoom: 4,)),

    );
  }
}
