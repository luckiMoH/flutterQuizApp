import 'package:flutter/material.dart';
import 'package:quizapp/answer_button.dart';
import 'package:quizapp/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }

}

class _QuestionScreenState extends State<QuestionScreen> {

  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      if(currentQuestionIndex < questions.length-1) {
      //currentQuestionIndex = currentQuestionIndex +1;
      //currentQuestionIndex +=1;
      currentQuestionIndex++;
      } else {
        print("Last question");
      }
    });
  }

  @override
  Widget build(context) {

    final currentQuestion = questions[currentQuestionIndex];

    return  SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //wyśrodkowanie
          crossAxisAlignment: CrossAxisAlignment.stretch, //rozciągniecie przycisków na cała szerokość
          children: [
           Text(
            currentQuestion.text,
            style: GoogleFonts.lato(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            textAlign: TextAlign.center,
            ),
          const SizedBox(height: 30),
        
          ...currentQuestion.getShuffledAnswers().map((answer) {
            return AnswerButton(
            answerText: answer,
            onTap: answerQuestion,
          );
          }),
        ],),
      ),
    );
  }
}