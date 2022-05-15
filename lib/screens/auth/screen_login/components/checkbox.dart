import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/checkbox_viewmodel.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CheckBoxViewModel _checkBox = Provider.of<CheckBoxViewModel>(context);
    return Checkbox(
      side: const BorderSide(color: Colors.white),
      value: _checkBox.value,
      activeColor: Colors.greenAccent,
      onChanged: (bool? e) => _checkBox.changeCheckBox(e!),
    );
  }
}
