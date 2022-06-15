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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Mon'),
                  Checkbox(
                    value: mon,
                    onChanged: (bool? value) {
                      setState(() {
                        mon = value!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Tue'),
                  Checkbox(
                    value: tue,
                    onChanged: (bool? value) {
                      setState(() {
                        tue = value!;
                      });
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('wed'),
                  Checkbox(
                    value: wed,
                    onChanged: (bool? value) {
                      setState(() {
                        wed = value!;
                        print(wed);
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
