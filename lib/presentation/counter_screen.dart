


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String clicks = "clicks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador Miguel Camacho Jimenez"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter=0;
              });
            },
          icon: const Icon(Icons.refresh_sharp),
        )],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: const TextStyle(fontSize: 150, fontWeight: FontWeight.w200),
            ),
             Text(
              clicks = clickCounter == 1 ? 'click' : 'clicks',
              style: const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[ 
          FloatingActionButton
        (
          onPressed: () {
            setState(() => clickCounter=0);
          },
          child: const Icon(Icons.refresh_sharp),
        ),
        const SizedBox(height: 16),
        FloatingActionButton
        (
          onPressed: () {
            setState(() => clickCounter++);
          },
          child: const Icon(Icons.plus_one),
        ),
        const SizedBox(height: 16),
        FloatingActionButton
        (
          onPressed: () {
            setState(() {
              if (clickCounter>0) {  
                clickCounter--;
              }
            });
          },
          child: const Icon(Icons.exposure_minus_1_sharp),
        )],
      ),
    );
  }

  Widget btnPlusOne({required void Function() onPressed, required Icon icono}) 
  => FloatingActionButton(  onPressed: onPressed,
                            child: icono);

//Test Comment

}
