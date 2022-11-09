import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Expert'),
        elevation: 1,
      ),
      body: Container(
        child: const Text('drawer'),
      ),
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.blue,
        child: Container(
          child: const Center(
            child: Text('child'),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home),
            title: const Text('Home'),
            activeColor: Colors.blue,
            inactiveColor: Colors.black,
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.message),
              title: const Text('Messages'),
              inactiveColor: Colors.black,
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: const Icon(Icons.search_rounded),
              inactiveColor: Colors.black,
              title: const Text('Search'),
              activeColor: Colors.blue),
          BottomNavyBarItem(
              icon: const Icon(Icons.people),
              title: const Text('user'),
              inactiveColor: Colors.black,
              activeColor: Colors.blue),
        ],
      ),
    );
  }
}
