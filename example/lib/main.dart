
import 'package:flutter/material.dart';
import 'package:human_body_selector/human_body_selector.dart';
import 'package:human_body_selector/svg_painter/maps.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Human body selector example'),
        ),
        backgroundColor: Colors.grey,
        body: const MySelector(),
      ),
    );
  }
}

class MySelector extends StatelessWidget {
  const MySelector({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: HumanBodySelector(
        map: Maps.HUMAN,
        onChanged: (bodyPart, active) {},
        onLevelChanged: (bodyPart) {},
        multiSelect: true,
        toggle: true,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width-100,
      ),
    );
  }
}
