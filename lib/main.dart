import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceFace = 1;
  int rightDiceFace = 1;

  _dice({int side, onPressed}) {
    return Expanded(
      child: FlatButton(
        child: Image.asset('assets/images/dice$side.png'),
        onPressed: onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          _dice(
            side: leftDiceFace,
            onPressed: () {
              setState(() {
                leftDiceFace = 5;
              });
            },
          ),
          _dice(
            side: rightDiceFace,
            onPressed: () {
              setState(() {
                rightDiceFace = 3;
              });
            },
          ),
        ],
      ),
    );
  }
}
