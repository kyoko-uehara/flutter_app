import 'package:flutter/material.dart';

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
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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