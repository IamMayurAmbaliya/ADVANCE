import 'package:contact_diary_app/headers.dart';

class ContactPage extends StatelessWidget {
  ContactPage({super.key});

  // final GlobalKey<FormState> nameKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> contactKey = GlobalKey<FormState>();
  //final GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  Contact contact = Contact(
    "Unknown",
    "1234567891",
    "Unknown123@gmail.com",
    "https://p1.hiclipart.com/preview/368/243/641/contact-us-icon-phone-icon-call-icon-logo-symbol-png-clipart.jpg",
  );
  @override
  Widget build(BuildContext context) {
    StepperController listenable = Provider.of<StepperController>(context);
    StepperController unListenable =
        Provider.of<StepperController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Add Contact",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Stepper(
          type: StepperType.vertical,
          currentStep: listenable.currentStep,
          onStepContinue: () {
            if (listenable.currentStep == 3) {
              Provider.of<ContactController>(
                context,
                listen: false,
              ).addContact(contact: contact);
              Navigator.pop(context);
            }
            unListenable.nextStep();
          },
          // onStepContinue: () => unListenable.nextStep(),
          onStepCancel: () => unListenable.previousStep(),
          steps: [
            Step(
              isActive: unListenable.isActive(index: 0),
              state: unListenable.getStepState(index: 0),
              title: const Text("Add Contact"),
              content: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    child: Text(
                      "Add Image",
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.cyan,
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                    ),
                  )
                ],
              ),
            ),
            Step(
              isActive: unListenable.isActive(index: 1),
              state: unListenable.getStepState(index: 1),
              title: const Text("Add Name"),
              content: Form(
                child: TextFormField(
                  onChanged: (value) {
                    contact.name = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    prefixIcon: const Icon(
                      Icons.account_circle_rounded,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.indigo,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Step(
              isActive: unListenable.isActive(index: 2),
              state: unListenable.getStepState(index: 2),
              title: const Text("Add Contact"),
              content: Form(
                child: TextFormField(
                  onChanged: (value) {
                    contact.contact = value;
                  },
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    hintText: "Enter Your Contact",
                    prefixIcon: const Icon(
                      Icons.account_circle_rounded,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.indigo,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Step(
              isActive: unListenable.isActive(index: 3),
              state: unListenable.getStepState(index: 3),
              title: const Text("Add Email"),
              content: Form(
                child: TextFormField(
                  onChanged: (value) {
                    contact.email = value;
                  },
                  decoration: InputDecoration(
                    hintText: "Enter Your Email",
                    prefixIcon: const Icon(
                      Icons.account_circle_rounded,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.indigo,
                        width: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
