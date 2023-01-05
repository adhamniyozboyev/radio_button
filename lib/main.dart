import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int? val;
  String test = '';
  String st = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 800,
              color: Colors.red,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Who is Football player?'),
                  Row(
                    children: [
                      Radio(
                          value: 1,
                          groupValue: val,
                          onChanged: (v) {
                            setState(() {
                              val = v as int;
                            });
                          }),
                      Text('Boyka')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 2,
                          groupValue: val,
                          onChanged: (v) {
                            setState(() {
                              val = v as int;
                            });
                          }),
                      Text('Dybala')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: 3,
                          groupValue: val,
                          onChanged: (v) {
                            setState(() {
                              val = v as int;
                            });
                          
                          }),
                      Text('Emenim')
                    ],
                  ),
                ],
              )),
              Text('Result is :$test',style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)
        ],
      ),    
    );
  }
}
