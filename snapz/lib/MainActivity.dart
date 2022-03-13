import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snapz/SecondActivity.dart';

class MainActivity extends StatefulWidget{
  @override
  State<MainActivity> createState() => _MainActivity();

}
class _MainActivity extends State<MainActivity>{
  String data = 'Hit to see next Page';
  String msg = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Activity'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            child: Text(data),
            onPressed: (){
              if(data != 'Hit to see next Page'){
                msg = 'Nothing';
              }
              else {
                String getS = Navigator.of(context).
                push(MaterialPageRoute(
                    builder: (context) => SecondActivity())) as String;
                setState(() {
                  data = getS;
                });
              }
            },
          ),
          const SizedBox(height: 30,),
          Text(msg, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),)
        ],
      ),
    );
  }

}