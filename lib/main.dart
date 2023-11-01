import 'package:flutter/material.dart';
import 'package:joke_app/screens/homesc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 500,
                  decoration: const BoxDecoration(
                    //  color: Colors.amber,
                    image: DecorationImage(
                      image: AssetImage('assets/pngwing.com.png'),
                      // fit: BoxFit.,
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 75,
                  left: 60,
                  child: Text(
                    'Welcome To Best Jokes',
                    textScaleFactor: 2,
                    style: TextStyle(
                      fontFamily: 'First Font',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const home(),
                    ));
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Colors.yellow,
                ),
              ),
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 75,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
