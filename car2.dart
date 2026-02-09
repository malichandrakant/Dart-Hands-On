class Car {
  // Private fields
  String _model;
  double _speed;

  // Constructor
  Car(this._model, this._speed);

  // Getter for model
  String get model => _model;

  // Setter for model
  set model(String value) {
    if (value.isNotEmpty) {
      _model = value;
    }
  }

  // Getter for speed
  double get speed => _speed;

  // Setter for speed with validation
  set speed(double value) {
    if (value >= 0) {
      _speed = value;
    } else {
      print("Speed can't be negative!");
    }
  }

  // Method to accelerate
  void accelerate(double increment) {
    speed += increment;
    print("Accelerating... Current speed: $_speed km/h");
  }

  // Method to brake
  void brake(double decrement) {
    if (_speed - decrement >= 0) {
      speed -= decrement;
      print("Braking... Current speed: $_speed km/h");
    } else {
      _speed = 0;
      print("Car stopped.");
    }
  }
}

void main() {
  var car = Car("Toyota", 50);

  print("Car model: ${car.model}");
  print("Car speed: ${car.speed}");

  car.accelerate(30);
  car.brake(60);
}
