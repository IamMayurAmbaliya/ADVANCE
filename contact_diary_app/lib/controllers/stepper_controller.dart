import 'package:contact_diary_app/headers.dart';

class StepperController extends ChangeNotifier {
  int currentStep = 0;

  void reset() {
    currentStep = 0;
    notifyListeners();
  }

  void nextStep() {
    if (currentStep < 3) {
      currentStep++;
    }
    notifyListeners();
  }

  void previousStep() {
    if (currentStep > 0) {
      currentStep--;
    }
    notifyListeners();
  }

  bool isActive({required int index}) {
    return currentStep == index;
    notifyListeners();
  }

  StepState getStepState({required int index}) {
    return (currentStep == index)
        ? StepState.editing
        : (currentStep > index)
            ? StepState.complete
            : StepState.indexed;
    notifyListeners();
  }
}
