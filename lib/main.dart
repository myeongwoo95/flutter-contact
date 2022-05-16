import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
          primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

//toast message (잘 안됨...)
/*class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: (){
            print("hello world!");
          },
          child: Text('Toast!!!'),
          style: ButtonStyle(
            textStyle:
            MaterialStateProperty.all(TextStyle(fontSize: 14)),
            foregroundColor:
            MaterialStateProperty.all(Colors.white),
          ),
        )
      )
    );
  }
}*/

//Snack Bar
/*class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar'),
          centerTitle: true,
        ),

        body: Center(
          child: ElevatedButton(
            child: Text('Show me',
              style: TextStyle(
                color: Colors.white
              ),
            ),
            style: ButtonStyle(
              textStyle:
              MaterialStateProperty.all(TextStyle(fontSize: 14)),
              foregroundColor:
              MaterialStateProperty.all(Colors.red),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('show me button is clicked',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                backgroundColor: Colors.teal,
                duration: Duration(milliseconds: 1000),
              ));
            },
          ),
        ),
    );
  }
}*/

//Appbar icon menu
/*
class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,

        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart button is clicked');
            },
          ),

          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/dogi-coin.jpg'),
                backgroundColor: Colors.white,
              ),

              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/sleeping_natalia.jpg'),
                  backgroundColor: Colors.white,
                ),
              ],

              accountName: Text('Dog'),
              accountEmail: Text('Dog@gmail.com'),
              onDetailsPressed: (){
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),

            ListTile(
              leading: Icon(Icons.home,
              color: Colors.grey[850],
              ),
              title: Text('home'),
              onTap: (){
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('setting'),
              onTap: (){
                print('setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),

            ListTile(
              leading: Icon(Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: (){
              },
              trailing: Icon(Icons.add),
            ),
          ],
        )
      ),
    );
  }
}
*/

void flutterToast(String msg){
  Fluttertoast.showToast(
      msg: msg,
      gravity: ToastGravity.BOTTOM, //Toast 위치
      backgroundColor: Colors.redAccent,
      fontSize: 20.0,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_SHORT
  );
}
