import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ron_digital/core/localization/view-models/language_provider.dart';

import '../../../../core/components/global_elevated_button.dart';
import '../../../../core/navigation/navigation.dart';
import '../../../../core/theme/theme_notifier.dart';
import '../../../../global/networking/view-models/product_viewmodel.dart';
import '../../../auth/screen_login/login.dart';
import '../view-models/controller_provider.dart';
import '../view-models/qr_viewmodel.dart';

class ChangeLanguageButton extends StatelessWidget {
  const ChangeLanguageButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LanguageProvider _language = Provider.of<LanguageProvider>(context);

    return IconButton(
      onPressed: () => _language.changeLanguage(),
      icon: const Icon(Icons.language),
    );
  }
}

class ChangeThemeIconButton extends StatelessWidget {
  const ChangeThemeIconButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeNotifier _theme = Provider.of<ThemeNotifier>(context);
    return IconButton(
      onPressed: () => _theme.setTheme(),
      icon: changeIcon(_theme),
    );
  }

  Icon changeIcon(ThemeNotifier _theme) {
    return _theme.isDark
        ? const Icon(CupertinoIcons.moon_fill)
        : const Icon(Icons.sunny, color: Colors.yellow);
  }
}

class CreateQRCodeButton extends StatelessWidget {
  const CreateQRCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QrViewModel _qrViewModel = Provider.of<QrViewModel>(context);
    HomeScreenControllerProvider _controllers =
        Provider.of<HomeScreenControllerProvider>(context);

    return GlobalElevatedButton(
      onPressed: () => _qrViewModel.changeUrl = _controllers.urlController.text,
      text: "Create QR Code",
    );
  }
}

class ScanQRCodeButton extends StatelessWidget {
  const ScanQRCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductViewmodel product = Provider.of<ProductViewmodel>(context);
    return GlobalElevatedButton(
      onPressed: () async {
        await product.getData();
      },
      text: "Scan QR Code",
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        pop(const LoginScreen(), context);
      },
      child: const Text("Logout"),
    );
  }
}
