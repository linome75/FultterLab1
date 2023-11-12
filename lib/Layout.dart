// import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const Lab1());

/// this is your APP Main screen configuration
class Lab1 extends StatelessWidget {
  const Lab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LAb1HomePage(),
    );
  }
}

/// this is a template to start building a UI
/// to start adding any UI you want change what comes after the [ body: ] tag below
class LAb1HomePage extends StatelessWidget {
  const LAb1HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      /*******************--[focus here 🧐]--*******************/
      appBar: AppBar(
        leading: const Icon(Icons.stars),
        title: const Text('Lab 1'),
        backgroundColor: Colors.teal,
        elevation: 4,
      ),
      body: myWidget(),
      /*******************--[focus here 🧐]--*******************/
    );
  }

  Widget myWidget() {
    return SingleChildScrollView(
      child: Column(
        children: [
          /*******************--[focus here 🧐]--*******************/
          const SizedBox(
            height: 25,
          ),
          exercise1(),
          const SizedBox(
            height: 25,
          ),
          exercise2(),
          const SizedBox(
            height: 25,
          ),
          exercise3(),
          const SizedBox(
            height: 25,
          ),
          exercise4(),
          const SizedBox(
            height: 25,
          ),
          exercise5(),
          const SizedBox(
            height: 25,
          ),
          exercise6(),
          /*******************--[focus here 🧐]--*******************/
        ],
      ),
    );
  }

  /// TODO: Implement Exercises below as per the handed Document
  Widget exercise1() {
    return Container(
        padding: const EdgeInsets.only(left: 5),
        child:
            /*******************--[focus here 🧐]--*******************/
            const Text(
          'Welcome to lab1',
          style: TextStyle(
              fontSize: 32,
              fontFamily: "monospace",
              color: Colors.greenAccent,
              backgroundColor: Colors.black38,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ));
  }

  Widget exercise2() {
    return Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.only(left: 10),
        child:
            /*******************--[focus here 🧐]--*******************/
            const Icon(Icons.share, size: 100, color: Colors.blue));
  }

  /// TODO : print on the screen on Pressed when clicking on the button, and print on Long Pressed when long click to Button
  Widget exercise3() {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(left: 10),
      child: ElevatedButton(
        onPressed: () {
          print("on Pressed");
        },
        onLongPress: () {
          print("Long Pressed");
        },
        style: TextButton.styleFrom(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
            backgroundColor: Colors.indigoAccent,
            elevation: 10),
        child: const Text(
          "Click here",
          style: TextStyle(color: Colors.amberAccent, fontSize: 24),
        ),
      ),
    );
  }

  Widget exercise4() {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(left: 10),
      decoration: const ShapeDecoration(color: Colors.black, shape: CircleBorder()),
      child: IconButton(
        style: IconButton.styleFrom(elevation: 10),
        padding: const EdgeInsets.all(5),
        onPressed: () {
          print("Fav Pressed");
        },
        icon: const Icon(Icons.favorite, color: Colors.greenAccent, size: 25),
      ),
    );
  }

  Widget exercise5() {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(left: 15),
      child: OutlinedButton(
        onPressed: () {
          print("on Pressed");
        },
        onLongPress: () {
          print("Long Pressed");
        },
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
            side: const BorderSide(color: Colors.amber, width: 2)),
        child: const Text(
          "Button to press",
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 24),
        ),
      ),
    );
  }

  Widget exercise6() {
    return Container(
      padding: const EdgeInsets.all(70),
      margin: const EdgeInsets.only(left: 15),
      decoration: const BoxDecoration(
        color: Colors.yellow,
        border: Border(
          left: BorderSide(color: Colors.indigo, width: 10),
          right: BorderSide(color: Colors.deepPurple, width: 10),
          top: BorderSide(color: Colors.blue, width: 10),
          bottom: BorderSide(color: Colors.red, width: 10),
        ),
      ),
      child: const Icon(
        Icons.warning,
        size: 35,
        color: Colors.black,
      ),
    );
  }
}
