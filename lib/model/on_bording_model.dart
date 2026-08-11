//!........List Case........
List<String> dec = [
  'Write your tasks in a list and check them when done!',
  'Group your tasks and keep them organized',
  'See how much you have done from your tasks',
];

List<String> title = ['Write Lists', 'Stay Organized', 'Check Progress'];

List<String> buttenTitle = ['Next', 'Next', 'Let’s Start'];

//!......Map case........
Map<String, List<String>> onBoardingData = {
  "dec": [
    'Write your tasks in a list and check them when done!',
    'Group your tasks and keep them organized',
    'See how much you have done from your tasks',
  ],
  "title": ['Write Lists', 'Stay Organized', 'Check Progress'],
  "buttenTitle": ['Next', 'Next', 'Let’s Start'],
};

//!...........Model case............

class OnBordingModel {
  String title;
  String dec;
  String buttenTitle;

  OnBordingModel({
    required this.buttenTitle,
    required this.dec,
    required this.title,
  });
}

List<OnBordingModel> onBoardingModelDataSorce = [
  OnBordingModel(
    buttenTitle: 'Next',
    dec: 'Write your tasks in a list and check them when done!',
    title: 'Write Lists',
  ),
  OnBordingModel(
    buttenTitle: 'Next',
    dec: 'Group your tasks and keep them organized',
    title: 'Stay Organized',
  ),
  OnBordingModel(
    buttenTitle: 'Let’s Start',
    dec: 'See how much you have done from your tasks',
    title: 'Check Progress',
  ),
];
