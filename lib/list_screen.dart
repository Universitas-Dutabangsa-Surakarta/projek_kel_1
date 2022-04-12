import 'package:flutter/material.dart';
import 'package:projek_kel_1/counter_screen.dart';
import 'package:projek_kel_1/home_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Screen'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => HomeScreen()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('Home Screen'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => CounterScreen()),
              );
            },
            child: Card(
              child: ListTile(
                title: Text('Counter Screen'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
