import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondActivity extends StatefulWidget{
  @override
  State<SecondActivity> createState() => _SecondActivity();

}
class _SecondActivity extends State<SecondActivity>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Second Activity'
        ),
      ),
      body: Center(
        child: TextButton(
          child: const Text(
            'Get me back'
          ),
          onPressed: (){
            Navigator.of(context).pop('Tap to see what you get from there!');
          },
        ),
      ),
    );
  }

}