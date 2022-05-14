import 'package:flutter/material.dart';

import '../../core/extension/context_extension.dart';

class SizedBox002V extends StatelessWidget {
  const SizedBox002V({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: context.getHeight(0.02));
  }
}


class KSizedBox extends StatelessWidget {
  final Widget child;

  const KSizedBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.getHeight(1) - 76,
      child: child,
    );
  }
}