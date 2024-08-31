class CounterModal {
  int _counter = 0;
  int get getCounter => _counter;

  CounterModal({required int initialValue}) {
    _counter = initialValue;
  }

  void increment() {
    _counter++;
  }

  void decrement() {
    _counter--;
  }
}
