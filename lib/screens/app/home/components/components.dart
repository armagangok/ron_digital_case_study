import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ron_digital/screens/app/home/view-models/controller_provider.dart';
import 'package:ron_digital/screens/app/home/view-models/qr_viewmodel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import './text_fields.dart';
import '../../../../core/components/global_elevated_button.dart';
import '../../../../global/components/components.dart';

Widget buildSliderIndicator(int activeIndex) {
  return AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: 5,
    effect: const SlideEffect(
      activeDotColor: Colors.amber,
      dotHeight: 10,
      dotWidth: 10,
    ),
  );
}

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

class CreateQRCodeButton extends StatelessWidget {
  const CreateQRCodeButton({
    Key? key,
  }) : super(key: key);

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
  const ScanQRCodeButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalElevatedButton(
      onPressed: () {},
      text: "Scan QR Code",
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text("Logout"),
    );
  }
}
