//////task 1////////

void main() {
  calculateTotal(32.0, 65.0, 65);
  calculateAverage(calculateTotal(32.0, 65.0, 65));
  getResult(calculateAverage(calculateTotal(32.0, 65.0, 65)));
}

double calculateTotal(double a, double b, double c) {
  double total = a + b + c;
  return total;
}

double calculateAverage(double total) {
  double average = total / 3;
  return average;
}

double getResult(double average) {
  if (average >= 50) {
    print("Pass");
  } else {
    print("Fail");
  }
  return 0;
}

///////task 2//////
void main() {
  Student std1 = Student("Hend", 19, 90);
  Student std2 = Student("omar", 21, 60);
  Student std3 = Student("Hana", 23, 49);
  std1.displayInfo();
  std2.displayInfo();
  std3.displayInfo();
  std1.isPassed();
  std2.isPassed();
  std3.isPassed();
  findTopStudent([std1, std2, std3]);
}

class Student {
  String name;
  int age;
  double grade;
  Student(this.name, this.age, this.grade);
  void displayInfo() {
    print("name is :$name & age is :$age &grade is :$grade ");
  }

  bool isPassed() {
    if (grade >= 50) {
      return true;
    }
    return false;
  }
}

findTopStudent(List<Student> students) {
  String topStudent = " ";
  double largeGrade = -1;
  for (var std in students) {
    if (largeGrade < std.grade) {
      largeGrade = std.grade;
      topStudent = std.name;
      print(
        "the student with the higthest grade is $topStudent with highestGtade $largeGrade",
      );
    }
  }
}

////task 3/////
void main() {
  BankAccount b = BankAccount("Basam", 10000);
  b.setBalance(10000);
  b.getBalance();
  print(" the balance after deposit is ${b.getDeposit(5000)}");
  print(" the bakance after withdraw is  ${b.getWithdraw(3000)}");
}

class BankAccount {
  String accountHolder = "";
  double _balance = 0;

  BankAccount(this.accountHolder, this._balance);
  setBalance(double value) {
    if (value > 0) {
      value = _balance;
    } else {
      print(" it is imossible");
    }
  }

  double getBalance() => _balance;
  getDeposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      return _balance;
    }
  }

  getWithdraw(double amount) {
    if (amount > _balance) {
      print("There is no enougth balance to withdraw ");
    } else {
      _balance -= amount;
      return _balance;
    }
  }
}

///////task 4//////
void main() {
  Product p1 = Product("laptop", 1234, 15000, 100);
  Product p2 = Product("Headphone", 4356, 500, 750);
  Product p3 = Product("keyBoard", 5678, 1500, 200);
  p1.setPrice(17000);
  p2.setPrice(18000);
  p3.setPrice(12000);
  print(p1.getPrice());
  print(p2.getPrice());
  print(p3.getPrice());
  p1.setQuantity(600);
  p2.setQuantity(134);
  p3.setQuantity(190);
  print(p1.getQuantity());
  print(p2.getQuantity());
  print(p3.getQuantity());
  p1.updateStock(2345);
  p2.updateStock(324);
  p3.updateStock(897);
  //calculateTotalValue();
  List<Product> products = [p1, p2, p3];
}

findProduct(List<Product> products, int id) {
  int searchedId;

  for (var item in products) {
    if (item.id == id) {
      return item;
    } else {
      return null;
    }
  }
}

class Product {
  String name;
  int id;
  double _price = 0;
  int _quantity = 0;
  Product(this.name, this.id, double price, int quantity) {}

  setPrice(double value) {
    if (value > 0) {
      _price = value;
    } else {
      print("Sorry!you don't have enougth money");
    }
  }

  double getPrice() => _price;

  setQuantity(int value) {
    if (value > 0) {
      _quantity = value;
    } else {
      print("The product is over try in later time");
    }
  }

  int getQuantity() => _quantity;

  updateStock(int amount) {
    if (_quantity < amount) {
      _quantity += amount;
    } else if (amount < _quantity) {
      _quantity -= amount;
    }
  }

  calculateTotalValue() {
    return _price * _quantity;
  }
}
