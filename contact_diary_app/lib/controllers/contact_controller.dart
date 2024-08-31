import 'package:contact_diary_app/headers.dart';

class ContactController extends ChangeNotifier {
  List<Contact> allContacts = <Contact>[];
  List<Contact> allHiddenContacts = <Contact>[];

  void hideContact({required int index}) {
    allContacts[index].hidden = true;
    allHiddenContacts.add(allContacts[index]);
    allContacts.removeAt(index);
    notifyListeners();
  }

  void addContact({required Contact contact}) {
    allContacts.add(contact);
    notifyListeners();
  }

  void removeContact({required Contact contact}) {
    allContacts.remove(contact);
    notifyListeners();
  }

  void editContact({required int index, required Contact contact}) {
    allContacts[index] = contact;
    notifyListeners();
  }
}
