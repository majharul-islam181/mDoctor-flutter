// ignore_for_file: prefer_const_constructors

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:mdoc/drawer/header_drawer.dart';
import 'package:mdoc/profile.dart';

class Done extends StatefulWidget {
  const Done({super.key});

  @override
  State<Done> createState() => _DoneState();
}

class _DoneState extends State<Done> {
  var currentpage = DrawerSections.dashboard;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // var container;
    // if (currentpage == DrawerSections.Settings) {
    //   Navigator.push(
    //       context, MaterialPageRoute(builder: (context) => Profile()));
    // }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mental Health Expert'),
        elevation: 1,
      ),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            padding: EdgeInsets.only(top: 5, left: 5),
            child: Icon(Icons.medical_information),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.only(top: 5, left: 5),
            child: Icon(Icons.medical_information),
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.red),
          ),
        ]),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                MyDrawerList(),
              ],
            ),
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

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        //show the list of menu drawer
        children: [
          MenuItem(1, "Dashboard", Icons.dashboard_outlined,
              currentpage == DrawerSections.dashboard ? true : false),
          MenuItem(2, "Settings", Icons.settings,
              currentpage == DrawerSections.Settings ? true : false),
          MenuItem(3, "Notifications", Icons.notifications,
              currentpage == DrawerSections.notification ? true : false),
          MenuItem(
            4,
            "About us",
            Icons.details,
            currentpage == DrawerSections.aboutus ? true : false,
          ),
        ],
      ),
    );
  }

  Widget MenuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentpage == DrawerSections.dashboard;
            } else if (id == 2) {
              currentpage == DrawerSections.Settings;
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
            } else if (id == 3) {
              currentpage == DrawerSections.aboutus;
            } else if (id == 4) {
              currentpage == DrawerSections.notification;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                  child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              )),
              Expanded(
                  flex: 3,
                  child: Text(
                    title,
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections { dashboard, Settings, aboutus, notification }
