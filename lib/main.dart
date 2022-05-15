import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MINI ADVENTURE', // 앱을 총칭하는 타이틀
      home: Index(), //home은 index.html와 같은 존재
    );
  }
}

class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[800],
      appBar: AppBar(
        title: Text('MINI ADVENTURE'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sleeping_natalia.jpg'),
                radius: 60.0,
              ),
            ),

            Divider(
              height: 60.0,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30.0,
            ),

            Text('NAME',
            style: TextStyle(
              color : Colors.white,
              letterSpacing: 2.0) //일반 컬러
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('NATALIA',
            style: TextStyle(
              color : Colors.white,
              letterSpacing: 2.0,
              fontSize: 28.0,
              fontWeight: FontWeight.bold),
            ),

            SizedBox(
              height: 30.0,
            ),

            Text('POWER LEVEL',
                style: TextStyle(
                    color : Colors.white,
                    letterSpacing: 2.0) //일반 컬러
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('100/100',
              style: TextStyle(
                  color : Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Lazy in the morning',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Speaking polish',
                style: TextStyle(
                  fontSize: 16.0,
                  letterSpacing: 1.0
                )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Right arm tattoo',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('Nice personality',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('beauty',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10.0,
                ),
                Text('funny',
                    style: TextStyle(
                        fontSize: 16.0,
                        letterSpacing: 1.0
                    )),
              ],
            ),
          ],
        ),
      )
    );
  }
}


