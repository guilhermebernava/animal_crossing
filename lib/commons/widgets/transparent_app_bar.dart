import 'package:flutter/material.dart';

class TransparentAppBar extends AppBar {
  TransparentAppBar({
    super.key,
  }) : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
        );
}
