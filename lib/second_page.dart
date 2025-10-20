import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
          ),
          child: Text('Go Back to First Page', style: TextStyle(fontSize: 20)),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
    );
  }
}
