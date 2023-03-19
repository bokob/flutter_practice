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
  List<String> name=<String>['치킨집', '중국집', '피자집'];
  List<String> phone=<String>['010-1234-5678', '010-1357-2468', '010-2468-1357'];

  addOne(){
    setState((){
      total++;
      print(total);
    });
  }

  addName(a){
    setState(() {
      name.add(a);
    });
  }

  addPhone(a){
    setState(() {
      phone.add(a);
    });
  }

  bool isSort=true;
  nameSort(){
    setState((){
      name.sort((a, b) => isSort ? a.compareTo(b) : b.compareTo(a));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return DialogUI(addName : addName ,addOne : addOne,
              nameSort : nameSort, addPhone:addPhone);
            });
          },
        ),
        appBar: AppBar(title: Text(total.toString())),
        body: ListView.builder(
              itemCount: name.length,
              itemBuilder: (c, i){
                return Dismissible(
                  key: Key(name[i]),
                  child: ListTile(
                    title: Text(name[i] + ' ' + phone[i]),
                    leading: Icon(Icons.account_circle),
                    trailing: TextButton(child: Text('삭제'), onPressed: (){
                      setState(() {
                        name.removeAt(i);
                        total--;
                      });
                    })
                  )
                );
                // return ListTile(
                //   leading: Icon(Icons.account_circle),
                //   title: Text(name[i]),
                //   trailing: TextButton(child: Text('삭제'), onPressed: (){
                //
                //   },)
                // );
              }
            ),
        );
  }
}

class DialogUI extends StatelessWidget {
  DialogUI({Key? key, this.addName, this.addOne, this.nameSort,
  this.addPhone}) : super(key: key);
  final addName;
  final addOne;
  final nameSort;
  final addPhone;
  var inputNameData = TextEditingController();
  var inputPhoneData = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 300,
        height: 300,
        child: Column(
          children: [
            TextField(controller: inputNameData,),
            TextField(controller: inputPhoneData,),
            TextButton( child: Text('완료'), onPressed:(){
              addOne();
              addName(inputNameData.text);
              addPhone(inputPhoneData.text);
              print(inputNameData.text);
              print(inputPhoneData.text);
              Navigator.pop(context);
              }),
            TextButton(
                child: Text('취소'),
                onPressed:(){ Navigator.pop(context); }),
            TextButton(
                child: Text('정렬'),
                onPressed:(){ nameSort(); })
          ],
        ),
      ),
    );
  }
}
