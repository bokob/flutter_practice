import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name=['치킨집', '중국집', '피자집'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 0),
                  width:60,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact',
                        style: TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold),),
                      TextField(),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text('Cancel')),
                            TextButton(onPressed: (){},
                                child: Text('OK', textAlign: TextAlign.end,))
                          ],
                        ),
                      )
                    ],
                  ),
                ));
            });
          },
        ),
        appBar: AppBar(title: Text('앱제목'),),
        body: ListView.builder(
              itemCount: 3,
              itemBuilder: (c, i){
                return ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(name[i]),
                );
              }
            ),
        );
  }
}


