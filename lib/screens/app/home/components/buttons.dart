import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/components/global_elevated_button.dart';
import '../view-models/controller_provider.dart';
import '../view-models/qr_viewmodel.dart';

class CreateQRCodeButton extends StatelessWidget {
  const CreateQRCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QrViewModel _qrViewModel = Provider.of<QrViewModel>(context);
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);
    String url = _controllers.urlController.text;
    return GlobalElevatedButton(
      onPressed: () => _qrViewModel.changeUrl = url,
      text: "Create QR Code",
    );
  }
}

class ScanQRCodeButton extends StatelessWidget {
  const ScanQRCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      onPressed: () {},
      text: "Scan QR Code",
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Logout"),
    );
  }
}