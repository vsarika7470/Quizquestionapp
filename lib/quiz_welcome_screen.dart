import 'package:demo_one/Pages/first_question_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizWelcomeScreen extends StatelessWidget {
  final String queTitle;
  final String queButtonText;
  const QuizWelcomeScreen({Key? key, required this.queTitle, required this.queButtonText}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          image: const DecorationImage(
            image: AssetImage("assets/Book1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Text(
                  queTitle,
                  style: GoogleFonts.fredokaOne(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold, 
                      shadows: [
                        Shadow(
                         blurRadius: 4, color: Colors.black, offset: Offset(4,4),
                        ),
                      ]
                    ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 100),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FirstQuestionPage(),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    child: Text(queButtonText),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.red.withOpacity(0.9),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: GoogleFonts.akronim(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      letterSpacing: 2.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
