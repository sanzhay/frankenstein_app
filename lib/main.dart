import 'package:clima/calculator_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Frankenstein'),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.calculate,
                  ),
                  text: 'Calculator',
                ),
                Tab(
                  icon: Icon(
                    Icons.cloud,
                  ),
                  text: 'Clima',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CalculatorPage(),
              LoadingScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
