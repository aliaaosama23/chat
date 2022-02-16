import 'package:flutter/material.dart';

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
