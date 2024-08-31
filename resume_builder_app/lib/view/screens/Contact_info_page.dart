import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume_builder_app/globals.dart';

class ContactInfoPage extends StatefulWidget {
  const ContactInfoPage({super.key});

  @override
  State<ContactInfoPage> createState() => _ContactInfoPageState();
}

class _ContactInfoPageState extends State<ContactInfoPage> {
  int _selected = 0;
  bool _hide = false;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController(text: "Mayur");
  TextEditingController phoneNumberController =
      TextEditingController(text: "9904871233");
  TextEditingController passwordController =
      TextEditingController(text: "Abc@6060");

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff6054C1),
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: w,
                color: const Color(0xff6054C1),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      "Contact Info",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                height: h,
                width: w,
                // padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(w * 0.1),
                    topRight: Radius.circular(w * 0.1),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          "Contact Info\nResume in !",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          "assets/images/Contact.png",
                          height: h * 0.15,
                        ),
                      ],
                    ),
                    const Divider(),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selected = 0;
                                    });
                                    log("Contact clicked...");
                                  },
                                  child: Container(
                                    height: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.purple,
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.amber,
                                          width: _selected == 0 ? 4 : 0,
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Contact",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selected = 1;
                                    });
                                    log("Photo clicked...");
                                  },
                                  child: Container(
                                    height: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.purple,
                                      border: Border(
                                        bottom: BorderSide(
                                          color: Colors.amber,
                                          width: _selected == 1 ? 4 : 0,
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      "Photo",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IndexedStack(
                                index: _selected,
                                children: [
                                  //CONTACT PAGE
                                  Container(
                                    height: h,
                                    color: Colors.grey.shade100,
                                    child: Form(
                                      key: _formKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextFormField(
                                              initialValue: Globals.name,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your name...";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onChanged: (val) {
                                                Globals.name = val;
                                              },
                                              onSaved: (val) {
                                                Globals.name = val ?? "";
                                              },
                                              decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.person_2_outlined),
                                                suffixIcon: const Icon(
                                                    Icons.next_plan_outlined),
                                                labelText: "Name",
                                                hintText: "Enter Name",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            TextFormField(
                                              initialValue: Globals.phoneNumber,
                                              keyboardType: TextInputType.phone,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter your Contact Number...";
                                                } else if (val.isNotEmpty &&
                                                    val.length < 10) {
                                                  return "Enter 10 Digit Number....";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onChanged: (val) {
                                                Globals.phoneNumber = val;
                                              },
                                              onSaved: (val) {
                                                Globals.phoneNumber = val ?? "";
                                              },
                                              textInputAction:
                                                  TextInputAction.next,
                                              maxLength: 10,
                                              decoration: InputDecoration(
                                                prefixIcon: const Icon(Icons
                                                    .phone_android_outlined),
                                                suffixIcon: const Icon(
                                                    Icons.next_plan_outlined),
                                                labelText: "Number",
                                                hintText:
                                                    "Enter Contact Number",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            TextFormField(
                                              initialValue: Globals.email,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Your Email...";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onChanged: (val) {
                                                Globals.email = val;
                                              },
                                              onSaved: (val) {
                                                Globals.email = val ?? "";
                                              },
                                              decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.email_outlined),
                                                suffixIcon: const Icon(
                                                    Icons.next_plan_outlined),
                                                labelText: "Email",
                                                hintText: "Enter Email",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            TextFormField(
                                              initialValue: Globals.password,
                                              validator: (val) {
                                                if (val!.isEmpty) {
                                                  return "Enter Your Password...";
                                                } else {
                                                  return null;
                                                }
                                              },
                                              onChanged: (val) {
                                                Globals.password = val;
                                              },
                                              onSaved: (val) {
                                                Globals.password = val ?? "";
                                              },
                                              obscureText: _hide,
                                              obscuringCharacter: "*",
                                              decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.password_outlined),
                                                suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _hide = !_hide;
                                                    });
                                                  },
                                                  icon: Icon(_hide
                                                      ? Icons.visibility_off
                                                      : Icons.visibility),
                                                ),
                                                labelText: "Password",
                                                hintText: "Enter Password",
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: BorderSide(
                                                    color: Colors.grey.shade400,
                                                  ),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  borderSide: const BorderSide(
                                                    color: Colors.green,
                                                    width: 2,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 50,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {
                                                    if (_formKey.currentState!
                                                        .validate()) {
                                                      _formKey.currentState!
                                                          .save();
                                                      log(Globals.name ?? "");
                                                      log(Globals.phoneNumber ??
                                                          "");
                                                      log(Globals.email ?? "");
                                                      log(Globals.password ??
                                                          "");
                                                    }
                                                  },
                                                  child: const Text("SUBMIT"),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: const Text("CLEAR"),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  //PHOTO PAGE
                                  Container(
                                    width: w,
                                    color: Colors.blue,
                                    child: const Text("Photo"),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
