import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titleList = ['Amazon', '楽天', 'Yahoo!', 'Google', 'Apple'];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('パスワードポスト'),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
          itemBuilder: (BuildContext context, int i) {
            return Column(
                children:[
                  ListTile(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
                    },
                    leading: Icon(Icons.vpn_key),
                    title: Text(titleList[i])
                  ),
                  Divider(),
                ]
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          titleList.addAll(['Google', 'udemy']);
          print(titleList);
          setState((){
          });
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
