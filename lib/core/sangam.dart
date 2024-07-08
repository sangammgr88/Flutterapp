import 'package:flutter/material.dart';
import "../page/codearea.dart";

class Sangam extends StatelessWidget {
  const Sangam({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CodeArea(),
    );
  }
}