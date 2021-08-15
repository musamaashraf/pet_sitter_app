import 'package:flutter/material.dart';

import 'colors.dart';

class CommonStyle {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Palette.white,
      boxShadow: [
        BoxShadow(
          offset: const Offset(0.0, 8.0),
          blurRadius: 4.0,
          color: Colors.grey.withOpacity(0.3),
        )
      ],
      borderRadius: BorderRadius.circular(20.0),
    );
  }
}
