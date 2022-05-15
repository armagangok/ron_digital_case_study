import 'package:flutter/material.dart';

import './components/buttons.dart';
import './components/components.dart';
import './components/qr_widget.dart';
import './components/text_fields.dart';
import '../../../core/components/product_widget.dart';
import '../../../core/components/sized_box.dart';
import '../../../core/extension/context_extension.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: context.getHeight(1.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ProductWidget(),
                  AdminUsernameText(),
                  TextFieldStack(),
                  LogoutButton(),
                  QRWidget(),
                  SizedBox002V(),
                  UrlTextField(),
                  CreateQRCodeButton(),
                  ScanQRCodeButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AdminUsernameText extends StatelessWidget {
  const AdminUsernameText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text("data");
  }
}
