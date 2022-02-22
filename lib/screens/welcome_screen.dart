import 'package:chat/components/rounded_button.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registeration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  // static : to be used  by the class itself
  // constant to avoid change it by any body
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
      //upperBound: 54,
      //lowerBound: 10,
    );
    controller.forward();

    //animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    animation =
        ColorTween(begin: Colors.white, end: Colors.grey).animate(controller);
    print(animation.value);
    animation.addStatusListener((status) {
      print(animation.status);
      // if (animation.isCompleted) {
      //   controller.reverse(from: 1);
      // } else if (animation.isDismissed) {
      //   controller.forward();
      // }
    });
    controller.addListener(() {
      setState(() {});
      print(controller.value);
      print(animation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          animation.value, //Colors.white.withOpacity(controller.value),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(
                flex: 10,
              ),
              Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset(
                        'assets/images/flash.png',
                      ),
                      width: 50,
                      //height: animation.value * 50,
                    ),
                  ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'Flash Chat',
                        textStyle: TextStyle(
                          fontSize: 54, //animation.value * 50, // 54,
                          //controller.value * 50, // 54, //controller.value,
                          color: Colors.black.withOpacity(0.5),
                          fontWeight: FontWeight.w900,
                          fontFamily: 'RobotoSerif',
                        ),
                        speed: const Duration(milliseconds: 500),
                      )
                    ],
                    totalRepeatCount: 2,
                    pause: const Duration(milliseconds: 1000),
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                  )
                ],
              ),
              const Spacer(
                flex: 3,
              ),
              RoundedButton(
                  text: 'Login',
                  color: Colors.lightBlueAccent,
                  onPress: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                  }),
              const Spacer(
                flex: 1,
              ),
              RoundedButton(
                text: 'Register',
                color: Colors.blue,
                onPress: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
              ),
              const Spacer(flex: 10)
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
}
