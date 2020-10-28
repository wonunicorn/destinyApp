import 'story.dart';

class StoryLists {
  int _numOfStory = 0;

  List<Story> _storyLists =[
    Story(s:  'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        a1: 'I\'ll hop in. Thanks for the help!',
        a2: 'Better ask him if he\'s a murderer first.',
    ),
  Story(
      s: 'He nods slowly, unphased by the question.',
      a1: 'At least he\'s honest. I\'ll climb in.',
      a2: 'Wait, I know how to change a tire.'),
  Story(
      s:
      'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      a1: 'I love Elton John! Hand him the cassette tape.',
      a2: 'It\'s him or me! You take the knife and stab him.'),
  Story(
      s:
      'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      a1: 'Restart',
      a2: ''),
  Story(
      s:
      'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      a1: 'Restart',
      a2: ''),
  Story(
      s:
      'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      a1: 'Restart',
      a2: '')
  ];
  String getStory(){
    return _storyLists[_numOfStory].story;
  }

  String getAnswer1(){
    return _storyLists[_numOfStory].choice1;
  }

  String getAnswer2(){
    return _storyLists[_numOfStory].choice2;
  }

  void reset(){
    _numOfStory = 0;
  }

  void nextStrory(int choiceNumber){
    if(choiceNumber == 1 && _numOfStory == 0)
      _numOfStory = 2;

    else if(choiceNumber == 2 && _numOfStory == 0)
       _numOfStory = 1;

    else if(choiceNumber == 1 && _numOfStory == 2)
       _numOfStory = 5;

    else if(choiceNumber == 2 && _numOfStory == 2)
       _numOfStory = 4;

    else if(choiceNumber == 1 && _numOfStory == 1)
       _numOfStory = 2;

    else if(choiceNumber == 2 && _numOfStory == 1)
       _numOfStory = 3;

    else if(_numOfStory == 5 || _numOfStory == 4 || _numOfStory ==3)
      reset();
  }

  bool buttonVisible(){
    if(_numOfStory == 0 || _numOfStory == 1 || _numOfStory == 2)
      return true;
    else
      return false;
  }


}