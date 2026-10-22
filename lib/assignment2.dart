import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(100),
          alignment: Alignment.bottomRight,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 245, 237, 227),
            border: Border.all(
              width: 5,
              color: const Color.fromARGB(255, 92, 64, 51),
            ),
            //borderRadius: BorderRadius.all(Radius.circular(20)),
            shape: BoxShape.circle,
            gradient: RadialGradient(
              colors: [
                const Color.fromARGB(255, 232, 216, 200),
                const Color.fromARGB(255, 139, 94, 60),
              ],
            ),
          ),
          child: Text("its body", style: TextStyle(fontSize: 10)),
        ),
      ),
    );
  }
}
