import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas JObsheet2',
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(appBar: AppBar(title: Text('My App')),
        body: Column(
          children: [
            Container(
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                    child: Text('Berita Terbaru')), 
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30,vertical: 50),
                    child: Text('Pertandingan Hari Ini'))],
              ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 4,)),
                child: Row(
                  children: [
                    Column(
                      children: [ Image.network('https://picsum.photos/seed/picsum/200/300',fit: BoxFit.fitWidth,),
                                  Text('Costa Mendekat Ke Palmerial'),
                                  Container(
                                  decoration: BoxDecoration(color: Colors.pink),
                                  child: Text('Transfer'),)],
                    )
                  ],
                ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 2)),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [Image.network('https://picsum.photos/200/300?grayscale',height: 200, width: 200,),
                      Column(
                        children: [
                          Text('Pique Bilang Wasit untungkan '),
                          Text('Madrid, keoman Tepok Jidat')
                        ],
                      ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: Colors.black,width: 1)),
                    child: Text('Barcelona Feb 13, 2021 '),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
