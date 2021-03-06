import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['item1','item2'];

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {},
                child: Text("Add"),
              ),
            ),
            Column(
              children: _products
                  .map(
                    (item) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/1.png'),
                              Text(item)
                            ],
                          ),
                        ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
