import 'dart:io';

void main() {
  print("Enter the Number");
  int? n = int.parse(stdin.readLineSync()!);

  if (n < 0) {
    print("Negative NUMBER");
  }
  if (n % 2 == 0) {
    print("Even");
  } else {
    print("odd");
  }
  //////task 2/////
  print("Enter the Number n");
  int? n = int.parse(stdin.readLineSync()!);
  print("The entered number is $n");
  for (int i = 0; i < n; i++) {
    if (n % 3 == 0) {
      print("Fizz");
    } else if (n % 5 == 0) {
      print("Buzz");
    } else if (n % 3 == 0 && n % 5 == 0) {
      print("FizzBuzz");
    } else {
      print(n);
    }
  }
  //////////task 3////
  List<int> numbers = [12, 5, 8, 21, 4, 15, 10];
  int sum = 0;
  int largerstNumber = numbers[0];
  int smallestNumber = numbers[0];
  int evenCounter = 0;

  for (int i = 0; i < numbers.length; i++) {
    if (largerstNumber < numbers[i]) {
      largerstNumber = numbers[i];
    }
    if (smallestNumber > numbers[i]) {
      smallestNumber = numbers[i];
    }
    if (numbers[i] % 2 == 0) {
      evenCounter++;
    }
    if (numbers[i] > 10) {}
    sum += numbers[i];
  }
  print("The largest Number is :$largerstNumber");
  print("the smallest number is :$smallestNumber");
  print("Sum of numbers is $sum");
  print("The number of even elements :$evenCounter");
  for (int i = 0; i < numbers.length; i++) {
    if (numbers[i] > 10) {
      print(numbers[i]);
    }
    ///////task 4//////
    Map<String, int> studentInfo = {
      "Hend": 90,
      "saeed": 95,
      "salma": 80,
      "omar": 45,
    };
    print(studentInfo);
    double sum = 0;
    int passCounter = 0;
    int topGrade = 0;
    String topStudent = '';

    for (var detail in studentInfo.entries) {
      String name = detail.key;
      int grade = detail.value;
      print("$name :$grade");
      if (grade >= 50) {
        print('pass');
        passCounter++;
      } else {
        print('fail');
      }
      if (topGrade < detail.value) {
        topGrade = detail.value;
        topStudent = detail.key;
      }
      sum += grade;
    }
    print("the average is :${sum / 3}");
    print("the number of assed Students is :$passCounter");

    print("The higthest grade is:$topGrade for student :$topStudent");
  }
  //////task 5//////
  String operation;
  int num1 = 98;
  int num2 = 9;
  print("Enter the operation");
  operation = stdin.readLineSync()!;

  switch (operation) {
    case "+":
      print(num1 + num2);
      break;
    case "-":
      print(num1 - num2);
      break;
    case "*":
      print(num1 * num2);
      break;
    case "/":
      if (num2 == 0) {
        print("not allowed");
      } else {
        print(num1 / num2);
      }
      break;
    default:
      print("Invalid operation");
  }
  ///////task 6/////
  List<Map<String, dynamic>> cart = [
    {"name": 'laptop', 'price': 17000, "quantity": 1},
    {"name": 'keyboard', 'price': 500, "quantity": 2},
    {"name": 'mouse', 'price': 300, "quantity": 1},
  ];
  int total = 0;
  int itemCount = 0;
  for (var item in cart) {
    int itemTotal = item['price'] * item['quantity'];
    print(
      ' name :${item['name']} ,price:${item['price']},quantity: ${item['quantity']}',
    );
    itemCount += item['quantity'] as int;
    total += itemTotal;
    print('total rice for each product:$itemTotal');
    if (total >= 25000) {
      print('Make a Discount 10%');

      print("price after discount is :${total * 0.1}");
    } else {
      print("Sorry! there is no any discount");
    }
  }
  print('final total cart price is  $total');
  print('number of item $itemCount');

  ///////task 7/////////
  List<Map<String, dynamic>> studentInfo = [
    {'name': 'Hend', 'score': 750, 'subjectNumber': 9},
    {'name': 'saeed', 'score': 600, 'subjectNumber': 9},
    {'name': 'Hoda', 'score': 790, 'subjectNumber': 9},
    {'name': 'Ahmed', 'score': 400, 'subjectNumber': 9},
  ];
  double topAvg = -5;
  String topStudent = '';
  String lowestStudent = '';
  double lowestAverage = 10000000000000000;
  double classAverage = 0;
  int passedcounter = 0;
  String searchName = 'Mona';
  bool found = false;
  for (int i = 0; i < studentInfo.length; i++) {
    double avg = studentInfo[i]['score'] / studentInfo[i]['subjectNumber'];
    String name = studentInfo[i]['name'];
    classAverage = avg / studentInfo.length;

    print('the average for a student $name:$avg');
    if (avg >= 85) {
      print("Excellent");
    } else if (avg >= 70) {
      print("Good");
    } else if (avg >= 50) {
      print("Pass");
    } else {
      print("Fail");
    }
    if (topAvg < avg) {
      topAvg = avg;
      topStudent = studentInfo[i]['name'];
    }
    if (lowestAverage > avg) {
      lowestAverage = avg;
      lowestStudent = studentInfo[i]['name'];
    }
    if (avg > 50) {
      passedcounter++;
    }
    if (searchName == studentInfo[i]['name']) {
      found = true;
      print(
        "her grades is :${studentInfo[i]['score']} and her average is $avg",
      );
    }
    if (!found) {
      print("Student not found");
    }
  }

  print('the lowestStudent is $lowestStudent with average $lowestAverage');
  print("The number of Student Who passed is $passedcounter");
  print("enter your option");
  int options = int.parse(stdin.readLineSync()!);

  switch (options) {
    case 1:
      print("all students $studentInfo");
      break;
    case 2:
      print("the class average is :$classAverage");
      break;
    case 3:
      print('the topStudent is $topStudent with average $topAvg');
      break;
    case 4:
      print('Exit');
      break;
  }
}
