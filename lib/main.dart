import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('앱제목'),),
        body: ListView(
          children: [
            Row(
             children:[
               Icon(Icons.account_circle, size: 50,),
               Text('홍길동')
             ], 
            ),
            Row(
              children:[
                Icon(Icons.account_circle, size: 50,),
                Text('홍길동')
              ],
            ),
            Row(
              children:[
                Icon(Icons.account_circle, size: 50,),
                Text('홍길동')
              ],
            )
          ],
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



