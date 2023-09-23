import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String major = "";

  void displayMajor() {
    
    setState(() {
      major = 'Computer Engineering';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my Information'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          
            CircleAvatar(
              radius: 60.0,
              backgroundImage:AssetImage('assets/nono.png')
            ),
            SizedBox(height: 20.0),
            Text(
              'misam kamal',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              major, 
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: displayMajor,
              child: Text('Show University Major'),
            ),
          ],
        ),
      ),
    );
  }
}