// 
// import 'package:flutter/material.dart';

// class CodeArea extends StatefulWidget {
//   const CodeArea({super.key});

//   @override
//   State<CodeArea> createState() => _CodeAreaState();
// }

// class _CodeAreaState extends State<CodeArea> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           width:double.infinity,
//           height: double.infinity,
//           color: Color.fromARGB(255, 200, 90, 164),
//           child: Column(
//             scrollDirection: Axis.vertical,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("hello"),
//                 Icon(Icons.search),
//                 Icon(Icons.mic),
//                 Icon(Icons.car_crash),
//                 Icon(Icons.mic),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class CodeArea extends StatelessWidget {
  const CodeArea({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue,
          child: Column(
            children: <Widget>[
              const Text(
                "0",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.w900),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Decrease"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}