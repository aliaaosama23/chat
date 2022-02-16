import 'package:flutter/material.dart';

InputDecoration? inputDecoration() {
  InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 3, color: Colors.blue),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.blue.shade200),
      borderRadius: BorderRadius.circular(30),
    ),
    hintText: 'Enter Your Email',
    hintStyle: const TextStyle(color: Colors.grey),
  );
}
