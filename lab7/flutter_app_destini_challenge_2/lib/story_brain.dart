//TODO: Step 6 - import the story.dart file into this file.
import 'story.dart';

//TODO: Step 5 - Create a new class called StoryBrain.
class StoryBrain {
  int _storyNumber = 0;
  //bool isButton2Visible = true;

  final List<Story> _storyData = [
    Story(
        stTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        chc1: 'I\'ll hop in. Thanks for the help!',
        chc2: 'Better ask him if he\'s a murderer first.'),
    Story(
        stTitle: 'He nods slowly, unphased by the question.',
        chc1: 'At least he\'s honest. I\'ll climb in.',
        chc2: 'Wait, I know how to change a tire.'),
    Story(
        stTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        chc1: 'I love Elton John! Hand him the cassette tape.',
        chc2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        stTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        chc1: 'Restart',
        chc2: ''),
    Story(
        stTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        chc1: 'Restart',
        chc2: ''),
    Story(
        stTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        chc1: 'Restart',
        chc2: '')
  ];

  void nextStory(int choiceNumber) {
    switch (_storyNumber) {
      case 0:
        _storyNumber = choiceNumber == 1 ? 2 : 1;
        break;
      case 1:
        _storyNumber = choiceNumber == 1 ? 2 : 3;
        break;
      case 2:
        _storyNumber = choiceNumber == 1 ? 5 : 4;
        break;
      default:
        restart();
        break;
    }
  }

  bool visibleButton() {
    if ([3, 4, 5].contains(_storyNumber)) {
      return false;
    } else {
      return true;
    }
  }

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void restart() {
    _storyNumber = 0;
  }
}
