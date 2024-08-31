import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:user_data/routes/app_routes.dart';
import 'package:user_data/provider/image_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _pickImage(BuildContext context) async {
    final ImageProvider imageProvider =
        Provider.of<ImageProvider>(context, listen: false);
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      imageProvider.setImageFile(File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("User Data"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Consumer<ImageProvider>(
                builder: (context, imageProvider, _) => CircleAvatar(
                  radius: 60,
                  child: imageProvider.imageFile == null
                      ? Icon(Icons.camera_alt,
                          size: 50, color: Colors.grey[300])
                      : null,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(),
              const SizedBox(
                height: 10,
              ),
              TextFormField(),
              const SizedBox(
                height: 10,
              ),
              TextFormField(),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.instance.secondPage);
                  },
                  child: const Text("Save"))
            ],
          ),
        ),
      ),
      // body: InAppWebView(
      //   initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse(uri))),
      // ),
    );
  }
}
