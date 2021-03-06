import 'package:flutter/material.dart';

import './components/buttons.dart';
import './components/components.dart';
import './components/text_fields.dart';
import '../../../core/components/sized_box.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: KSizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  EmailTextField(),
                  SizedBox002V(),
                  PasswordTextField(),
                  RememberMeAndCheckBox(),
                  LoginButton(),
                  SizedBox002V(),
                  GoToRegisterPageButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// class TestWidget extends StatelessWidget {
//   const TestWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 320,
//       child: ValueListenableBuilder<Box<UserModel>>(
//         valueListenable: Boxes.getUsers().listenable(),
//         builder: (context, box, _) {
//           final data = box.values.toList();
//           return ListView.builder(
//             itemCount: data.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(data[index].email),
//                 subtitle: Text(data[index].password),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
