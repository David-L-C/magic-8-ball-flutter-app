import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask me anything...'),
        backgroundColor: Colors.blueAccent,
          ),
      body: Center(
          child: Ball()
          ),
      backgroundColor: Colors.blue,
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
 }

class _BallState extends State<Ball>{
  int ballNumber = 1;
  @override
  Widget build(BuildContext context){
      return FlatButton(
        onPressed: (){
        setState(() {
          ballNumber = Random().nextInt(4) + 1;
          AssetImage('images/ball$ballNumber.png');
        });
        print('I was clicked');
        },
        child: Image(image: AssetImage('images/ball$ballNumber.png')
      ),
    );
  }
}

