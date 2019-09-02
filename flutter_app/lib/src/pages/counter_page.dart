import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _textStyle = new TextStyle(fontSize: 20);

  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('My First Flutter App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of Clicks:', style: this._textStyle,),
            Text('$_counter', style: this._textStyle),
          ],
        )
      ),
      floatingActionButton: _createButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  // Method that creates the buttons.
  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _reset, backgroundColor: Colors.deepPurple),
        Expanded(child: SizedBox(width: 5.0)),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _substract, backgroundColor: Colors.deepPurple),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add, backgroundColor: Colors.deepPurple),
        SizedBox(width: 5.0),
      ]);
  }

  // Method that adds 1 to the counter.
  void _add() {
    setState(() => this._counter++);
  }

  // Method that substracts 1 to the counter.
  void _substract() {
    setState(() => this._counter--);
  }

  // Method that resets the counter.
  void _reset() {
    setState(() => this._counter = 0);
  } 
}