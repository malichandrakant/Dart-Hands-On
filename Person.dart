class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void introduce() {
    print('Hi, my name is $name and I am $age years old.');
  }
}
