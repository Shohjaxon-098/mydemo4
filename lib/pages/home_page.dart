import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';
import 'package:mydemo4/pages/login_page.dart';

class HomePage extends StatefulWidget {
  final String name;
  final int age;
  const HomePage({super.key, required this.name, required this.age});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int raqam = 0;
  String name = "Shohjaxon";
  int age = 0;
  Map javob = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 10, 112, 228),
        leading: const Icon(Icons.arrow_back_outlined),
        title: const Text("Shohjaxon"),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              print("Camerani och");
            },
            icon: const Icon(Icons.camera),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/second");
              },
              child: const Text("ButtonOne"),
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(name: "Flutter", age: 22),
                    )).then((value) {
                  setState(() {
                    javob = value;
                  });
                });
              },
              child: Text("${javob["Name"]} ${javob["Age"]}"),
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
