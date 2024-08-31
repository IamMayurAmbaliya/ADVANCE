import 'package:counter_app_using_provider/headers.dart';

class CounterController extends ChangeNotifier {
  //state
  CounterModal counterModal = CounterModal(initialValue: 0);

  //Behaviour
  void increment() {
    counterModal.increment();
    notifyListeners();
  }

  void decrement() {
    counterModal.decrement();
    notifyListeners();
  }
}
