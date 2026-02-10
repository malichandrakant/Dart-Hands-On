mixin CanRun {
  void run() {
    print('Running');
  }
}

class Person with CanRun {}

void main() {
  final p = Person();
  p.run();
}
