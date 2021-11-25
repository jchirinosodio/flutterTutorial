// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var icon = const Icon(Icons.ac_unit);
  var text = "HOla mundo";

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_print
    print("Estoy a punto de mostrar $text");
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    icon,
                    Text(text),
                  ],
                ),
                Row(
                  children: [
                    icon,
                    Text(text),
                  ],
                ),
                Row(
                  children: [
                    icon,
                    Text(text),
                  ],
                )
              ],
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  text = "Adios Mundo";
                  icon = const Icon(Icons.access_time_filled);
                });
                print(text);
              },
              child: Container(
                margin: const EdgeInsets.all(50),
                child: const Text("Add a new item"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
