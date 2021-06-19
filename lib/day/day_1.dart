import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [Colors.blue, Colors.lightBlue],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.keyboard_arrow_left,
                  ),
                ],
              ),
              Column(
                
                children: const  [
                  Text(
                    "Welcome",
                  ),
                  Text(
                    "Sign Up to get Started",
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
