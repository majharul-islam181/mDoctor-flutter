import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4D03AQFJ6sb9o2tkkA/profile-displayphoto-shrink_800_800/0/1655315206918?e=1673481600&v=beta&t=BjinaZMQrdP4QMk0xmqsFrdMGArq_wfXXfA9U3Ogqf8'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.3,
            child: Container(
              color: Colors.white,
            ),
          ),

          //Sliding Panel

          SlidingUpPanel(
            minHeight: MediaQuery.of(context).size.height * 035,
            maxHeight: MediaQuery.of(context).size.height * 0.85,

            body: Container(
              color: Colors.transparent,
            ),
            // panelBuilder: (sc) => _pannelBody(controller),
          )
        ],
      ),
    );
  }

  SingleChildScrollView _pannelBody(ScrollController controller) {
    return SingleChildScrollView(
      controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [Container()],
      ),
    );
  }
}
