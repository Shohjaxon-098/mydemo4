import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          IconButton(
            onPressed: () {
              print("Camerani och");
            },
            icon: const Icon(Icons.camera),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text("ButtonOne"),
          style: ButtonStyle(
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
      ),
    );
  }
}
