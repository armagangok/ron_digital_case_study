import 'package:flutter/material.dart';

import './components/components.dart';
import './components/qr_widget.dart';
import './components/sample_product_widget.dart';
import './components/text_fields.dart';
import '../../../global/components/components.dart';

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
            child: Column(
              children: const [
                ProductWidget(),
                SizedBox002V(),
                TextFieldStack(),
                SizedBox002V(),
                LogoutButton(),
                QRWidget(),
                SizedBox002V(),
                UrlTextField(),
                SizedBox002V(),
                CreateQRCodeButton(),
                SizedBox002V(),
                ScanQRCodeButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
