import 'package:flutter/material.dart';

Future<dynamic> push(Widget page, context) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );

pop(Widget page, context) => Navigator.pop(context);
