import 'package:demo_one/Models/questions_model.dart';
import 'package:demo_one/quiz_welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstQuestionPage extends StatefulWidget {
  const FirstQuestionPage({Key? key}) : super(key: key);

  @override
  State<FirstQuestionPage> createState() => _FirstQuestionPageState();
}

class _FirstQuestionPageState extends State<FirstQuestionPage> {
  List queList = [que1, que2, que3, que4, que5];
  QuestionModel currentQuestion = que1;
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          image: const DecorationImage(
            image: AssetImage("assets/Book.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                "Physics Questions...",
                style: GoogleFonts.fredokaOne(
                    fontSize: 40,
                    color: Colors.grey[200],
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            quizView(context),
          ]),
        ),
      ),
    );
  }

  Padding quizView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              questionView(),
              optionsListView(),
            ],
          ),
        ),
      ),
    );
  }

  Padding questionView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        currentQuestion.question,
        style: GoogleFonts.alata(
            fontSize: 25, color: Colors.grey[200], fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  optionTaped(int index) {
    if (currentQuestion.answer == index) {
      setState(() {
        if (currentQuestionIndex < (queList.length - 1)) {
          currentQuestionIndex = currentQuestionIndex + 1;
          currentQuestion = queList[currentQuestionIndex];
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => QuizWelcomeScreen(
              queTitle: "Thank You....", 
              queButtonText: "Question Again",
              ),
            ),
          );
        }
      });
    }
  }

  Container optionsListView() {
    return Container(
      height: 350,
      child: ListView.builder(
          itemCount: currentQuestion.optiosList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(35, 8, 35, 8),
              child: GestureDetector(
                onTap: () => optionTaped(index),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white, width: 1),
                  ),
                  child: Text(
                    currentQuestion.optiosList[index],
                    style: GoogleFonts.cambo(
                      color: Colors.white,
                      fontSize: 15,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
//  https://www.youtube.com/watch?v=4EUqi2ZKh_M