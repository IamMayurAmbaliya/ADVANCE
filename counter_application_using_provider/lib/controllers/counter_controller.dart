import 'package:counter_application_using_provider/headers.dart';

class CounterController extends ChangeNotifier {
  //state
  // CounterModal counterModal = CounterModal(initialValue: 0);
  late CounterModal counterModal;

  //Shared-Preferences
  late SharedPreferences preferences;

  CounterController({required this.preferences}) {
    init();
  }

  void init() {
    counterModal = CounterModal(
      initialValue: preferences.getInt('_counter') ?? 0,
    );
  }

  //Behaviour
  void increment() {
    counterModal.increment();
    preferences.setInt(
      '_counter',
      counterModal.getCounter,
    );
    notifyListeners();
  }

  void decrement() {
    counterModal.decrement();
    preferences.setInt(
      '_counter',
      counterModal.getCounter,
    );
    notifyListeners();
  }
}
