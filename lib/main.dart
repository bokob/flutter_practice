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
  var total = 3;
  var name=['치킨집', '중국집', '피자집'];

  addOne(){
    setState((){
      total++;
      print(total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return DialogUI(total:total, name:name ,addOne : addOne);
            });
          },
        ),
        appBar: AppBar(title: Text(total.toString())),
        body: ListView.builder(
              itemCount: total,
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

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.total, this.name, this.addOne}) : super(key: key);
  var total;
  var name;
  final addOne;
  var inputData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputData,),
            TextButton( child: Text('완료'), onPressed:(){
              addOne();
              name.add(inputData.text);
              print(inputData.text);
              print(name);
              }),
            TextButton(
                child: Text('취소'),
                onPressed:(){ Navigator.pop(context); })
          ],
        ),
      ),
    );
  }
}
