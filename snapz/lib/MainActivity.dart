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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: ElevatedButton(
                child: Text(data, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                onPressed: (){
                  Navigator.of(context).
                  push(MaterialPageRoute(
                      builder: (context) => SecondActivity()));
                },
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                child: Text('Text Button', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0) ,),
                onPressed: (){
                  setState(() {
                    msg = 'You clicked Text Button';
                  });
                },
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: OutlineButton(
                child: Text('Outline Button', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0) ,),
                onPressed: (){
                  setState(() {
                    msg = 'You clicked Outline Button';
                  });
                },
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: IconButton(
                icon: const Icon(
                  Icons.workspaces_outline,
                  size: 40,
                ),
                onPressed: (){
                  setState(() {
                    msg = 'You clicked Icon Button';
                  });
                },
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              alignment: Alignment.center,
              child: RaisedButton(
                child: const Text('Raised Button'),
                onPressed: (){
                  setState(() {
                    msg = 'You clicked Raised Button';
                  });
                },
              ),
            ),
            const SizedBox(height: 30,),
            Text(msg, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)
          ],
        ),
      )
    );
  }

}