abstract class Vehicle {
  void start();       // abstract method
  void stop();        // abstract method

  void fuelType() {   // concrete method
    print("Uses fuel");
  }
}

class Car extends Vehicle {
  @override
  void start() {
    print("Car starts with key");
  }

  @override
  void stop() {
    print("Car stops using brakes");
  }
}

class Bike extends Vehicle {
  @override
  void start() {
    print("Bike starts with self-start");
  }

  @override
  void stop() {
    print("Bike stops using hand brakes");
  }
}

void main() {
  Vehicle v1 = Car();
  Vehicle v2 = Bike();

  v1.start();
  v2.start();
  v1.stop();
  v2.stop();
}
