import 'package:flutter/material.dart';

class TransparentAppBar extends AppBar {
  TransparentAppBar({
    super.key,
    Widget? title,
  }) : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: title,
        );
}
