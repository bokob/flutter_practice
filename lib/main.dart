import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var name=['치킨집', '중국집', '피자집'];
  var like=[0,0,0];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱제목'),),
        body: ListView.builder(
              itemCount: 3,
              itemBuilder: (c, i){
                return ListTile(
                  leading: Text(like[i].toString()),
                  title: Text(name[i]),
                  trailing: ElevatedButton(child: Text('좋아요'), onPressed: (){
                    setState((){
                      like[i]++;
                    });
                  },)
                );
              }
            ),
        bottomNavigationBar: MyBottomAppBar(),
        )
    );
  }
}

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.phone),
            Icon(Icons.message_rounded),
            Icon(Icons.contact_page)
          ],
        ),
      ),
    );
  }
}



