class Counter {
  final int value;

  Counter(this.value);

  Counter increment() {
    return Counter(value + 1);
  }

  Counter decrement() {
    return Counter(value > 0 ? (value - 1) : 0);
  }

  Counter reset() {
    return Counter(0);
  }
}
