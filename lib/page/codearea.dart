     
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class CodeArea extends StatefulWidget {
  const CodeArea({super.key});

  @override
  State<CodeArea> createState() => _CodeAreaState();
}

class _CodeAreaState extends State<CodeArea> {
  int count = 0;
  bool exid = false;
  void _increment() {
    setState(() {
      count++;
    });
  }

  void _decrement() {
    setState(() {
      if (count > 0) {
        count--;
      } else {
        exid = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
       shadowColor: Colors.yellow,
       elevation: 50,
       actions: [
        IconButton(
          onPressed: (){}, 
        icon: const Icon(Icons.reset_tv),
        )
       ],
                title: const Text("my first App")
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/img1.jpg'),
              ),
              Image.asset("assets/images/img1.jpg"),
              const SizedBox(
                height: 40,
              ),
              Text(
                "$count",
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.w900),
              ),
              IconButton(
                onPressed: () {
                  _increment();
                },
                icon: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {
                  _decrement();
                },
                child: const Text("Decrease"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    count = 0;
                  });
                },
                child: const Text("Reset Here"),
              ),
              Text(
// import "package:google_fonts/google_fonts.dart";

                (count > 0 ? "goes above" : "else doesn't"),
                style: GoogleFonts.cabin(
                    fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: Colors.red,
                  ),
                  const Positioned(
                    top: 10,
                    right: 10,
                    child: Text(
                      "data",
                    ),
                  )
                ],
              ),
              TextButton(
                onPressed: () {}, child: Text("Text Button")),
              OutlinedButton(
                onPressed: () {},
                child: Text("Outline Button"),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
