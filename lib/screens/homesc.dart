import 'package:flutter/material.dart';

import 'package:joke_app/screens/program.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List category = [
    'Programming',
    'Miscellaneous',
    'Dark',
    'Pun',
    'Spooky',
    'Christmas'
  ];

  String programm =
      "https://v2.jokeapi.dev/joke/Programming?type=twopart&amount=10";
  String mall =
      "https://v2.jokeapi.dev/joke/Miscellaneous?type=twopart&amount=10";
  String dar = "https://v2.jokeapi.dev/joke/Dark?type=twopart&amount=10";
  String punn = "https://v2.jokeapi.dev/joke/Pun?type=twopart&amount=10";
  String spoo = "https://v2.jokeapi.dev/joke/Spooky?type=twopart&amount=10";
  String chris = "https://v2.jokeapi.dev/joke/Christmas?type=twopart&amount=10";

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
        body: SafeArea(
          child: Column(
            children: [
              Container(
                // color: Colors.amber,
                padding: const EdgeInsets.all(20),
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Hey Buddy !!',
                          style: TextStyle(
                            fontFamily: 'First Font',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.5,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Select Your.',
                          style: TextStyle(
                            fontFamily: 'First Font',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 2,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Category',
                          style: TextStyle(
                            fontFamily: 'First Font',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(10),
                  children: List.generate(category.length, (index) {
                    return InkWell(
                      borderRadius: BorderRadius.circular(20),
                      radius: 50,
                      onTap: () {
                        if (index == 0) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: programm),
                            ),
                          );
                        } else if (index == 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: mall),
                            ),
                          );
                        } else if (index == 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: dar),
                            ),
                          );
                        } else if (index == 3) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: punn),
                            ),
                          );
                        } else if (index == 4) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: spoo),
                            ),
                          );
                        } else if (index == 5) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => program(category: chris),
                            ),
                          );
                        }
                      },
                      child: Card(
                        color: Colors.blue.shade300,
                        elevation: 2,
                        child: Center(
                          child: Text(
                            category[index],
                            style: const TextStyle(
                              fontFamily: 'First Font',
                              fontWeight: FontWeight.bold,
                              color: Colors.white60,
                            ),
                            textScaleFactor: 1.8,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
