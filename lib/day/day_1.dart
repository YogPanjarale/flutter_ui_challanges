import 'package:flutter/material.dart';

class Day1 extends StatelessWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration:   BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blueAccent.shade400, Colors.lightBlue],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.keyboard_arrow_left,
                  ),
                ],
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    Text(
                      "Welcome!",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Sign Up to get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
