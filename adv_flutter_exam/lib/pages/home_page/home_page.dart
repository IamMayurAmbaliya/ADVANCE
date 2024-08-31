import 'package:adv_flutter_exam/controllers/api_controller.dart';
import 'package:adv_flutter_exam/globals.dart';
import 'package:adv_flutter_exam/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DogController valueController = Provider.of<DogController>(context);
    DogController methodController =
        Provider.of<DogController>(context, listen: false);
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "WELCOME TO CAT WORLD'S",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.blue,
            fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.instance.loginPage);
            },
            icon: Icon(Icons.login),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                filled: true,
                hintText: "Enter Dog-Breed Name",
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide.none,
                ),
              ),
              onFieldSubmitted: (value) {
                Globals.globals.searchDogName = searchController.text;
                methodController.fetchData();
                searchController.clear();
              },
              onSaved: (val) {
                Globals.globals.searchDogName = val ?? "golden retriever";
              },
            ),
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
            thickness: 2,
            color: Colors.blue,
          ),
          Container(
            child: valueController.allDogs.isEmpty
                ? const CircularProgressIndicator()
                : Expanded(
                    child: ListView.builder(
                      itemCount: valueController.allDogs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(12),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  margin: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        valueController
                                            .allDogs[index].imageLink,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  "Name : ${valueController.allDogs[index].name}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Barking : ${valueController.allDogs[index].barking}",
                                  style: const TextStyle(fontSize: 20),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
