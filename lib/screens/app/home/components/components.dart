import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../view-models/controller_provider.dart';
import '../view-models/qr_viewmodel.dart';
import './text_fields.dart';
import '../../../../core/components/global_elevated_button.dart';
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

