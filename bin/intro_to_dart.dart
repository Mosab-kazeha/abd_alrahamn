import 'package:intro_to_dart/intro_to_dart.dart';

void main() {
  //? delaration and insalasion
  String? name;
  print(name.runtimeType);
  name = "";
  print(name.runtimeType);
  //? key word
  const bool isFav = true;
  final bool isMe;
  // print(isMe.runtimeType);
  // isFav = true;
  print(isFav.runtimeType);
  int number = 5;
  print(number.runtimeType);

  int? age;
  try {
    print(age! + number);
  } catch (e) {
    print(e);
  }

  dynamic anything;

  print(anything.runtimeType);
  anything = 50;
  print(anything.runtimeType);
  anything = "50";
  print(anything.runtimeType);
  anything = null;
  print(anything.runtimeType);

  var anythingByVar = 50.5;
  print(anythingByVar);
  anythingByVar = 522;
  print(anythingByVar);

  var anythingVar = "50.5";
  print(anythingVar);
  anythingVar = "522";
  print(anythingVar);

  var areWeDone;
  print(areWeDone);
  areWeDone = "mk";
  print("==============$areWeDone");
  print("==============" + areWeDone);
  areWeDone = true;
  print("==============" + "$areWeDone");

  List<num> numbers;
  numbers = [];
  numbers.add(44);
  print(numbers);
  numbers.addAll([5, 55, 55.5, 66]);
  print(numbers);

  var result = numbers.firstWhere((e) => e > 55);
  numbers.remove(result);

  print(numbers);
  numbers = [5, 66, 10, -10];

  print(numbers.elementAt(0));
  print(numbers[0]);

  List ages;
  ages = [];
  print(ages.runtimeType);

  Map<dynamic, String> address = {"name": "abd", 5: "12"};
  print(address.runtimeType);
  address.addAll({'phone': "09222222"});
  print(address.length);
  print(address.values);
  print(address.keys);
  print(address["name"]);

  print(address.values.elementAt(0));
  print(address.keys.elementAt(2));

  print(nestedList[1].values.elementAt(3));
  print(nestedList[2].keys.elementAt(4));

  print(nestedList[3].values.elementAt(3));
  print(nestedList[3].keys.elementAt(2));

  print(nestedMap["posts"][0]["body"]);
  print(nestedMap["posts"][2]["title"]);
  print(nestedMap["posts"][2].values.elementAt(1));
  print(nestedMap.values.elementAt(0).elementAt(2).values.elementAt(1));
  print(nestedMap.values.elementAt(0).elementAt(1).values.elementAt(3).elementAt(2));
}
