import 'package:flutter/material.dart';

import './text_fields.dart';
import '../../../../global/components/components.dart';

class TextFieldStack extends StatelessWidget {
  const TextFieldStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Number1TextField(),
        SizedBox002V(),
        Number2TextField(),
        SizedBox002V(),
        ResultTextField(),
      ],
    );
  }
}
