import 'package:contact_diary_app/headers.dart';
import 'package:local_auth/local_auth.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ContactController listenable = Provider.of<ContactController>(
      context,
    );
    ContactController unListenable = Provider.of<ContactController>(
      context,
      listen: false,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "My Contact",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: ListView.builder(
          itemBuilder: (context, index) => ExpansionTile(
            leading: CircleAvatar(
              backgroundColor: Colors.primaries[index % 18],
              radius: 30,
              child: Text(
                listenable.allContacts[index].name[0].toUpperCase(),
                style: const TextStyle(fontSize: 25),
              ),
            ),
            title: Text(listenable.allContacts[index].name),
            subtitle: Text(
              "${listenable.allContacts[index].contact}\n${listenable.allContacts[index].email}",
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text("Edit Contact"),
                          content: Column(
                            children: [
                              TextFormField(
                                onChanged: (value) =>
                                    listenable.allContacts[index].name = value,
                                initialValue:
                                    listenable.allContacts[index].name,
                              ),
                              TextFormField(
                                onChanged: (value) => listenable
                                    .allContacts[index].contact = value,
                                initialValue:
                                    listenable.allContacts[index].contact,
                              ),
                              TextFormField(
                                onChanged: (value) =>
                                    listenable.allContacts[index].email = value,
                                initialValue:
                                    listenable.allContacts[index].email,
                              ),
                            ],
                          ),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                unListenable.editContact(
                                  index: index,
                                  contact: listenable.allContacts[index],
                                );
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Save",
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                "Cancel",
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    child: const SizedBox(
                      child: Center(
                        child: Text("Edit"),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      unListenable.removeContact(
                        contact: listenable.allContacts[index],
                      );
                    },
                    child: const SizedBox(
                      child: Center(
                        child: Text("Delete"),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    onPressed: () async {
                      Uri uri = Uri(
                        scheme: 'tel',
                        path: listenable.allContacts[index].contact,
                      );
                      await launchUrl(uri);
                    },
                    backgroundColor: Colors.green,
                    child: const Icon(
                      Icons.call,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      Uri uri = Uri(
                        scheme: 'sms',
                        path: listenable.allContacts[index].contact,
                      );
                      await launchUrl(uri);
                    },
                    backgroundColor: Colors.red,
                    child: const Icon(
                      Icons.sms,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () async {
                      Uri uri = Uri(
                        scheme: 'mailto',
                        path: listenable.allContacts[index].email,
                      );

                      await launchUrl(uri);
                    },
                    backgroundColor: Colors.blue,
                    child: const Icon(
                      Icons.mail,
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.amber,
                    child: const Icon(
                      Icons.share,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
          itemCount: listenable.allContacts.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          LocalAuthentication authentication = LocalAuthentication();
          Future<bool> opened = authentication.authenticate(
              localizedReason: 'Open to new Contacts!!');
          if (await opened) {
            Provider.of<StepperController>(context, listen: false).reset();
          }
          Navigator.of(context).pushNamed(
            AppRoutes.instance.contactPage,
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
