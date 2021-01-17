import 'package:flutter/material.dart';
import 'package:notebook/draw.dart';
import 'package:notebook/page0.dart';
import 'package:notebook/text/text_editor.dart';

class Canvas extends StatefulWidget {
  @override
  _CanvasState createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Draw()));
        },
        child: Icon(Icons.image),
        backgroundColor: mycolor,
      ),
      body: TextEditor(),
    );
  }
}
