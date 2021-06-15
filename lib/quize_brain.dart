import 'question.dart';
// TODO: Here we define encapsulation by _ so that question can not be manipulated from the public _(private class object)
class QuizBrain{
  int _questionNumber = 0; // init value of questions in the array index is 0
  List<Question> _questionBank = [
    //Here are the question list more question can be added to it letter
    Question(q: 'You can lead  a cow down  stairs but not up stairs.',  a: false),
    Question(q: 'Approximately one quarter of human bones are  in the feet.', a: true),
    Question(q: 'A slug\'s blood  is green.', a: true),
    Question(q:'Some cats are actually allergic to human ',  a:true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal', a: true),
    Question(q: 'No piece of Square dry paper can be folded in half more than 7 times', a: true),
    Question(q: 'In London, UK, if you happen to die in the House of parliament, you are technically entitled to a state funeral, '
        'because the building is considered to scared a piece ', a: true),
    Question(q: 'Loudest sound produced by any animal is 188 decibels. That animal is the African Elephant', a: true),
    Question(q: 'The Total surface area of two human lungs is approximately 70 square metres.', a: true),
    Question(q: 'Google was originally called \"Backrub\" ', a: true),
    Question(q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog', a: true),
    Question(q: 'In West Virginia , USA , if you accidentally hit an animal with your car, you are free to take it home to  eat', a: true)

  ];


  //TODO: the method void nextQuestion provide ability for next option once  a question is answered  _questionNumber is the encapsulated privately
  //TODO To avoid the system from being crash once we are out of question we we minus the length of the question by  1 and increment the number by addition of one
  //Functions for next questions once it click to avoid crash then minus the length by 1
  void nextQuestion (){
      if(_questionNumber < _questionBank.length-1 ){
        _questionNumber++;
      }
  }


// Method For getting text Questions by encapsulation
String qetQuestionText ( ){
    //TODO: the method here return the String values of the questions by accessing the
  // TODO questionBank through the index call alongside by questionText from our question dictionary
  return _questionBank[_questionNumber].questionText;
}

bool  getCorrectAnswers ( ){
    //TODO : Here return the answers from the  QuestionBanks
  return _questionBank[_questionNumber].questionAnswers;

}
}