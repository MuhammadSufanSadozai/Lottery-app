
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(title: const Center(child: Text('Lottery App'))),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text('lottery winning is number 5'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(40)),
                child: x == 5
                    ?  Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.green,
                            size: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'You win your number $x \n congratulation!!!!',
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              'Better luck next your number $x \n Try Again!!!!',
                              textAlign: TextAlign.center,
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // print(random.nextInt(10).toString());
              x = random.nextInt(11);
              print(x);
              setState(() {});
            },
            child: const Icon(Icons.refresh),
          )),
    );
  }
}
