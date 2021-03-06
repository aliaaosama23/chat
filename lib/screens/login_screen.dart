import 'package:chat/components/rounded_button.dart';
import 'package:chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  const LoginScreen({Key? key}) : super(key: key);

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
                  child: SizedBox(
                    child: Image.asset(
                      'assets/images/flash.png',
                    ),
                    width: 50,
                    height: 200,
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue.shade200),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(25),
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
                  style: const TextStyle(color: Colors.black, fontSize: 15),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue.shade200),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.blueAccent),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    hintText: 'Enter Your Password',
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Spacer(
                  flex: 3,
                ),
                RoundedButton(
                  onPress: () {
                    Navigator.pushNamed(context, ChatScreen.id);
                  },
                  text: 'Login',
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
