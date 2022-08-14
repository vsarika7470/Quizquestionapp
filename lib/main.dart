import 'package:demo_one/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: QuizWelcomeScreen(
    queTitle: "Physics Objective \nFor Students...", 
    queButtonText: "Start" ,),
  ));
}

