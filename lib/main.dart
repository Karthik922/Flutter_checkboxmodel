import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool mon = false;
  bool tue = false;
  bool wed = false;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Check box'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              customCheckBox('Mon', mon),
              customCheckBox('Tue', tue),
              customCheckBox('Wed', wed),
            ],
          ),
        ));
  }

  Column customCheckBox(String title, bool val) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        Checkbox(
          value: val,
          onChanged: (bool? value) {
            setState(() {
              switch (title) {
                case 'Mon':
                  mon = value!;
                  break;
                case 'Tue':
                  tue = value!;
                  break;
                case 'Wed':
                  wed = value!;
                  break;
              }
            });
          },
        ),
      ],
    );
  }
}
