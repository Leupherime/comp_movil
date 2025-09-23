import 'package:flutter/material.dart';

Widget sideButton(String text) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 94, 106, 114),
      borderRadius: BorderRadius.circular(4),
    ),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    child: Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
}