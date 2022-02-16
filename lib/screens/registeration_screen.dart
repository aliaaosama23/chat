import 'package:chat/CustomWidgets/rounded_button.dart';
import 'package:chat/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = 'registration_screen';

  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Spacer(
                  flex: 5,
                ),
                Hero(
                  tag: 'logo',
                  child: Image.asset(
                    'assets/images/flash.png',
                    width: 50,
                    height: 200,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blue.shade200),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter Your Email',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 3, color: Colors.blue.shade200),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(width: 3, color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    hintText: 'Enter Your Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                RoundedButton(
                  onPress: () {
                    Navigator.pushNamed(context, ChatScreen.id);
                  },
                  text: 'Register',
                  color: Colors.lightBlueAccent,
                ),
                const Spacer(
                  flex: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
