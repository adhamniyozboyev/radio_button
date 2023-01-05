import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
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
// List question=[]

  int? val;
  String test = '';
  String st = 'first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              height: 780,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('Who is Football player?'),
                  RadioListTile(
                      title: const Text('Og\'abek'),
                      value: 1,
                      groupValue: val,
                      onChanged: (v) {
                        setState(() {
                          val = v as int;
                        });
                        setState(() {
                          test = 'false';
                        });
                      }),
                  RadioListTile(
                      title: const Text('Dybala'),
                      value: 2,
                      groupValue: val,
                      onChanged: (v) {
                        setState(() {
                          val = v as int;
                        });
                        setState(() {
                          test = 'True';
                        });
                      }),
                  RadioListTile(
                      title: const Text('Emenim'),
                      value: 3,
                      groupValue: val,
                      onChanged: (v) {
                        setState(() {
                          val = v as int;
                        });
                        setState(() {
                          test = 'false';
                        });
                      }),
                ],
              )),
          Text(
            'Result is :$test',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
                Text(
                  st,
                  style: const TextStyle(fontSize: 20),
                ),
                IconButton(
                  onPressed: () {
                    
                  },
               icon: const Icon(Icons.arrow_forward_ios,size: 20,),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
