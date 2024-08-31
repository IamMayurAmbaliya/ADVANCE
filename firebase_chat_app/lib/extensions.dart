import 'package:flutter/material.dart';

extension Size on int {
  SizedBox get height => SizedBox(
        height: toDouble(),
      );

  SizedBox get width => SizedBox(
        width: toDouble(),
      );
}
