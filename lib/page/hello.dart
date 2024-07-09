import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title : const Text("hello Page"),
      ),
      body: Center(
        child: Text("Hello page"),
      ),),
    );
  }
}