import 'package:flutter/material.dart';

// ignore: must_be_immutable
class delevary extends StatelessWidget {
  String data;
  delevary({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.lightBlue,
            Colors.grey,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              padding: const EdgeInsets.all(35),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/8864425.png'),
                ),
              ),
              child: Container(
                margin: const EdgeInsets.all(30),
                child: Center(
                  child: Text(
                    data,
                    textScaleFactor: 2,
                    style: const TextStyle(fontFamily: 'First Font'),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.yellow)),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.yellow,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
