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

class DicePage extends StatelessWidget {
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
            side: 1,
            onPressed: () {
              print('Left button pressed.');
            },
          ),
          _dice(
            side: 2,
            onPressed: () {
              print('Right button pressed.');
            },
          ),
        ],
      ),
    );
  }
}
