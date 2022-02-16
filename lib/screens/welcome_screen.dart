import 'package:chat/screens/login_screen.dart';
import 'package:chat/screens/registeration_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcome_screen';
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
                  const Text(
                    'Flash Chat',
                    style: TextStyle(
                      fontSize: 54,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.6,
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

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.text,
    required this.color,
    required this.onPress,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color color;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(
        text,
        style: const TextStyle(fontSize: 16),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.all(18),
        ),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
