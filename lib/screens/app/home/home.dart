import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './components/buttons.dart';
import './components/components.dart';
import './components/qr_widget.dart';
import './components/text_fields.dart';
import '../../../core/components/product_widget.dart';
import '../../../core/components/sized_box.dart';
import '../../../core/localization/view-models/language_provider.dart';
import '../../../lang/locale_keys.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: ListView(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                DataWidget(),
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
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LanguageProvider _language = Provider.of<LanguageProvider>(context);

    return AppBar(
      title: _language.isTurkish
          ? Text(LocaleKeys.appTitle.tr())
          : const Text(LocaleKeys.appTitle),
      leading: const ChangeThemeIconButton(),
      actions: const [ChangeLanguageButton()],
    );
  }

  @override
  Size get preferredSize => const Size(56, 56);
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
