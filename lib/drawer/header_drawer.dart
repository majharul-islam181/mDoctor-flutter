// ignore_for_file: prefer_const_constructors

import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10.0),
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media-exp1.licdn.com/dms/image/C4D03AQFJ6sb9o2tkkA/profile-displayphoto-shrink_800_800/0/1655315206918?e=1673481600&v=beta&t=BjinaZMQrdP4QMk0xmqsFrdMGArq_wfXXfA9U3Ogqf8')),
              )),
          Text(
            'Md. Majharul Islam',
            style: GoogleFonts.crimsonPro(
                fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'majharul.islam03@northsouth.edu',
            style: GoogleFonts.dancingScript(
                fontSize: 15, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
