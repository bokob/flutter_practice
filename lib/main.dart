import 'package:flutter/material.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatelessWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20),
          title : Row(
           children: [Text("금호동3가"),
             Icon(
                 Icons.arrow_drop_down,
                 color: Colors.black)]),
          actions: [
            Icon(Icons.search, color: Colors.black),
            Icon(Icons.menu, color: Colors.black),
            Icon(Icons.notifications_none, color: Colors.black)],
          ),
        body: Container(
          margin: EdgeInsets.fromLTRB(5,5,5,5),
          height: 135,
          decoration: BoxDecoration(
              border: Border(top:BorderSide(color: Colors.grey, width:1.0),
              bottom:BorderSide(color: Colors.grey, width:1.0)
            )
          ),
          child: Row(
            children: [
              Container(
                width:110,
                padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                child: Image.asset("camera.png")),
              Flexible(
                fit: FlexFit.tight,
                child: Container(
                  padding: EdgeInsets.fromLTRB(2, 5, 2, 5),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("캐논 DSLR 100D (단렌즈,",
                              style: TextStyle(fontSize: 20)),
                        Text("충전기 16기가SD 포함)",
                            style: TextStyle(fontSize: 20)),
                        Text("성동구 행당동 끌올 10분 전",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey)),
                        Text("210,000원",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                        Flexible(
                            fit: FlexFit.tight,
                            child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.favorite_border),
                                    Text("4")
                                  ],
                                ),
                              ),
                        )
                        ]
                    ),
                  ),
                ),
              )
            ],
          )
        )
      )
      );
  }
}
