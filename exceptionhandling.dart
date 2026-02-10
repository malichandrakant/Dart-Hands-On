import 'dart:io';

void main() {
  try {
    stdout.write("Enter first number: ");
    int x = int.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    int y = int.parse(stdin.readLineSync()!);

    int result = x ~/ y; // integer division
    print("Result: $result");
  }
  on IntegerDivisionByZeroException {
    print("Error: Division by zero is not allowed.");
  }
  on FormatException {
    print("Error: Please enter valid integers only.");
  }
  catch (e) {
    print("Unexpected error: $e");
  }
  finally {
    print("Program finished.");
  }
}
