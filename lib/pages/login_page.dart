import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  final int age;
  final String name;
  const LoginPage({super.key, required this.name, required this.age});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int age = 33;
  String name = 'Dart';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Navigator.pop(context, {"Name": name, "Age": age});
        },
        child: const Icon(Icons.face_outlined),
      ),
      body: Center(child: Text("${widget.name} ${widget.age}")),
    );
  }
}
