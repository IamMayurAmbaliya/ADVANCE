import 'package:counter_app/headers.dart';

class CounterModal extends ChangeNotifier {
  int _counter = 0;

  int get getCounter => _counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
