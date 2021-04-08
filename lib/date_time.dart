
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Form'),
        ),
        body: Center(
          child: ChangeForm(),
        ),
      ),
    );
  }
}

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {

  DateTime _date = new DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: _date,
        firstDate: new DateTime(2016),
        lastDate: new DateTime.now().add(new Duration(days: 360))
    );
    if(picked != null) setState(() => _date = picked);
  }

  TimeOfDay _time = new TimeOfDay.now();

  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    if(picked != null) setState(() => _time = picked);
  }

  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: <Widget>[
            Center(
            child:Text("$_date")),
            new RaisedButton(
              onPressed: () => _selectDate(context),
              child: new Text('日付選択'),),
            Center(
            child:Text("$_time")),
            new RaisedButton(
              onPressed: () => _selectTime(context),
              child: new Text('時間選択'),),
           Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context, 'やれやれだぜ');
              },
              child: Text('Go back!'),
           ),
           ),
          ],
        )
    );
  }
}