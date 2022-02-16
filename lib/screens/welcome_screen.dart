import 'package:chat/CustomWidgets/rounded_button.dart';
import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registeration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  // static : to be used  by the class itself
  // constant to avoid change it by any body
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    child: Image.asset(
                      'assets/images/flash.png',
                      width: 50,
                    ),
                  ),
                  Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 54,
                      color: Colors.black.withOpacity(0.6),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.2,
                    ),
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
}
