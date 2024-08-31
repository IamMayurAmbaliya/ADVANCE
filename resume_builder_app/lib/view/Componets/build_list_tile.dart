import 'package:flutter/material.dart';

Widget BuildListTile({
  required String image,
  required String title,
  required BuildContext context,
  required String routeName,
}) {
  Size size = MediaQuery.of(context).size;
  double h = size.height;
  double w = size.width;
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(routeName);
          },
          child: Row(
            children: [
              Expanded(
                child: CircleAvatar(
                  radius: w * 0.08,
                  foregroundImage: AssetImage(image),
                  backgroundColor: Colors.white,
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const Expanded(
                child: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
        const Divider(),
      ],
    ),
  );
}
