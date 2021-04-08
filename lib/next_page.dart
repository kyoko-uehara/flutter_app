import 'package:flutter/material.dart';
import 'package:flutter_app/date_time.dart';

class SecondRoute extends StatelessWidget {
  SecondRoute(this.name);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: RaisedButton(
                onPressed: () {
                  final result = Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyApp()),
                  );
                },
                child: Text('日時設定'),
              ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'kyoko uehara'
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter your username'
              ),
            ),
            Text(name),
            Center(
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context, 'やれやれだぜ');
                },
                child: Text('Go back!'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}