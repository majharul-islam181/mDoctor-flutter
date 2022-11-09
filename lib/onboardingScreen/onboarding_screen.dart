import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:mdoc/done.dart';
import 'package:mdoc/screens/register.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  List<PageViewModel> getpages() {
    return [
      PageViewModel(
        decoration: PageDecoration(
            imageFlex: 2,
            titleTextStyle: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'GoogleFonts.poppins()',
            ),
            bodyTextStyle: TextStyle(
              fontSize: 15,
              fontFamily: 'GoogleFonts.dancingScript()',
            )),
        title: "Doctors At Hand ",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Lottie.network(
              "https://assets1.lottiefiles.com/packages/lf20_42B8LS.json"),
        )),
      ),
      // PageViewModel(
      //   title: "Title of 2 page",//
      //   body:
      //       "Here you can write the description of the page, to explain someting...",
      //   image: Center(
      //       child: Padding(
      //     padding: EdgeInsets.only(top: 20.0),
      //     child: Lottie.network(
      //         "https://assets5.lottiefiles.com/packages/lf20_iivslabn.json"),
      //   )),
      // ),
      PageViewModel(
        title: "Nearby Doctor",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Lottie.network(
              "https://assets5.lottiefiles.com/private_files/lf30_tul1qoqd.json"),
        )),
      ),
      PageViewModel(
        title: "Online Consultation - Anytime, Anywhere",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
            child: Padding(
          padding: EdgeInsets.only(top: 29.0),
          child: Lottie.network(
              "https://assets2.lottiefiles.com/packages/lf20_zpjfsp1e.json"),
        )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: IntroductionScreen(
        done: const Text(
          'Done',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        onDone: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RegisterScreen()));
        },
        pages: getpages(),
        showBackButton: false,
        showSkipButton: true,
        showDoneButton: true,
        back: const Icon(Icons.arrow_back),
        skip: const Text("Skip"),
        onSkip: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Done()));
          // You can also override onSkip callback
        },
        next: const Icon(Icons.arrow_circle_right_outlined),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.red,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      )),
    );
  }
}
