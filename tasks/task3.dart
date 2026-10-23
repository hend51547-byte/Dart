void main() {
  Counter c = Counter();
  c.incremt();
}

class Counter {
  int count = 0;
  void incremt() {
    count++;
    print(this);
  }
}
