// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() async {
  //? requaerd posetion
  print(sumTwoNumber(2, 5));

  //? requaerd posetion && opional
  print(sumTwoNumber(2, 5, 5));

  //? requaerd named && opional
  print(myMony(inputMony: 5000));

  //?futue async await
  String fulName = await takeTime("abd", "farastaki");
  Future<String> fulNameWithOutAwait = takeTime("abd", "farastaki");
  print(fulNameWithOutAwait);
  print(fulName);
  print(await takeTime("abd", "farastaki"));

  print(abd);
  print(mhd);
  print(number == number2);
  print(mhd == abd);
  print(mhd["name"] == abd["name"]);

  Eng abdAlRahman = Eng(
    name: "abd",
    job: "eng",
    birthday: DateTime(2000),
    salary: 3000,
  );
  Doctor abdAlAziz = Doctor(
    name: "abd",
    job: "D",
    birthday: DateTime(2000),
    salary: 10000,
  );

  Eng mosab = Eng(name: "mosab", salary: 2000, birthday: DateTime(2000));

  Human omar = Eng(name: "mosab", salary: 2000, birthday: DateTime(2000));


  print("chake the classes is equal ${abdAlAziz == abdAlRahman}");
  print(
    "chake the bithdays is equal ${abdAlAziz.birthday == abdAlRahman.birthday}",
  );

  print(abdAlRahman.toString());
  print(abdAlRahman.sayMyName());
  print(abdAlAziz.sayMyName());

  print(isHaerd(abdAlAziz));
  print(isHaerd(mosab));
  print(mosab.sayMyName());

  Cat cat = Cat(name: "kity", type: "cat");
  Dog dog = Dog.temp;
  dog.setNewName("dogy");
  Dog dog2 = Dog.temp;

  cat.sound();
  dog.sound();
  print(dog.name);
  print(dog2 == dog);
  print(omar);
}

bool isHaerd(Human human) {
  if (human.job == "eng") return true;
  if (human.job == "D") return true;
  return false;
}

int number = 0;
int number2 = 0;

num sumTwoNumber(int firstNumber, int secondNumber, [int theirdNumber = 0]) {
  num rsult = firstNumber + secondNumber + theirdNumber;
  return rsult;
}

num myMony({required num inputMony, num? cost}) {
  num rsult;
  try {
    rsult = inputMony - cost!;
  } catch (e) {
    rsult = inputMony;
  }
  return rsult;
}

Future<String> takeTime(String fisrtName, String lastName) async {
  await Future.delayed(Duration(seconds: 1));

  return fisrtName + lastName;
}

Map<String, dynamic> abd = {
  "name": "abd",
  "job": "eng",
  "birthday": DateTime(2000, 1, 1),
};

Map<String, dynamic> mhd = {
  "name": "abd",
  "job": "eng",
  "birthday": DateTime(2000, 1, 1),
};

abstract class Human {
  String name;
  String job;
  DateTime birthday;

  Human({required this.name, required this.job, required this.birthday});

  String sayMyName() {
    if (job == "eng") {
      return "eng.$name";
    } else if (job == "D") {
      return "D.$name";
    }
    return name;
  }

  @override
  String toString() {
    return 'name $name  \n job $job \n birthbay ${birthday.year}';
  }
}

class Eng extends Human {
  double salary;
  Eng({required super.name, job, required super.birthday, required this.salary})
    : super(job: 'eng');
}

class Doctor extends Human {
  double salary;
  Doctor({
    required super.name,
    job,
    required super.birthday,
    required this.salary,
  }) : super(job: 'eng');
}

class IT extends Eng {
  String posetion;
  IT({
    required super.name,
    required super.birthday,
    required super.salary,
    required this.posetion,
  });

  @override
  String toString() {
    return "I am Eng";
  }
}

class Animal {
  String name;
  String type;
  Animal({required this.name, required this.type});

  void sound() {
    print("animal sound");
  }
}

//? oop inheritance
class Cat extends Animal {
  Cat({required super.name, required super.type});

  //? oop poymorphisim
  @override
  void sound() {
    print("mue");
  }
}

//? oop Encapsulation
class Dog extends Animal {
  Dog._({required super.name, required super.type});

  static Dog temp = Dog._(name: "spark", type: "hasky");

  void setNewName(String newName) {
    name = newName;
  }

  @override
  void sound() {
    print("hu");
  }
}
