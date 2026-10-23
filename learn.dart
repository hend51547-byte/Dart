void main() {
  List<int> numbers = [12, 5, 8, 21, 4, 15, 10];
  int sum = 0;
  int largerstNumber = numbers[0];
  int smallestNumber = numbers[0];

  for (int i = 0; i < numbers.length; i++) {
    if (largerstNumber < numbers[i]) {
      print("the lagest number is :$numbers[i]");
    }
    if (smallestNumber > numbers[i]) {
      print("the smallest number is :$numbers[i]");
    }
    sum += numbers[i];
  }

  print("Sum of numbers is $sum");
}
