import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:joke_app/screens/api.dart';

import 'package:http/http.dart' as http;
import 'package:joke_app/screens/delevary.dart';

// ignore: must_be_immutable
class program extends StatefulWidget {
  String category;
  program({super.key, required this.category});

  @override
  State<program> createState() => _programState();
}

class _programState extends State<program> {
  late Future<List<user>> datas;

  @override
  void initState() {
    datas = getdata();
    super.initState();
  }

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
        body: Container(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            future: datas,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.indigo.shade100,
                      shadowColor: Colors.blue,
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => delevary(
                                      data: snapshot.data![index].delivery)));
                        },
                        title: Text(snapshot.data![index].setup),
                      ),
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          ),
        ),
        bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(),
            fixedSize: Size(0, 60),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Go Back',
            textScaleFactor: 1.8,
          ),
        ),
      ),
    );
  }

  Future<List<user>> getdata() async {
    var userr = await http.get(Uri.parse(widget.category));
    var data = jsonDecode(userr.body);

    List result = data["jokes"];
    return List<user>.from(result.map((e) => user.jsonfromMap(e)));
  }
}
