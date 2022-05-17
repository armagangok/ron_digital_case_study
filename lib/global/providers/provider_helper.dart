import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../../core/local/database/viewmodels/hive_viewmodel.dart';
import '../../core/localization/view-models/language_provider.dart';
import '../../core/theme/theme_notifier.dart';
import '../../core/view-models/page_indicator_viewmodel.dart';
import '../../screens/app/home/view-models/controller_provider.dart';
import '../../screens/app/home/view-models/qr_viewmodel.dart';
import '../../screens/app/home/view-models/textfield_viewmodel.dart';
import '../../screens/auth/providers/checkbox_viewmodel.dart';
import '../../screens/auth/providers/controller_provider.dart';
import '../networking/view-models/product_viewmodel.dart';

class ProviderHelper {
  List<SingleChildWidget> providers = [
    // ChangeNotifierProvider(create: (_) => GlobalViewModel()),
    // ChangeNotifierProvider(create: (_) => PageIndicator()),
    ChangeNotifierProvider(create: (_) => CheckBoxViewModel()),
    ChangeNotifierProvider(create: (_) => IndicatorViewModel()),
    ChangeNotifierProvider(create: (_) => QrViewModel()),
    ChangeNotifierProvider(create: (_) => TextFieldViewModel()),
    ChangeNotifierProvider(create: (_) => HiveViewModel()),
    ChangeNotifierProvider(create: (_) => ThemeNotifier()),
    ChangeNotifierProvider(create: (_) => LanguageProvider()),
    Provider(create: (_) => ProductViewmodel()),
    Provider(create: (_) => LoginScreenControllerProvider()),
    Provider(create: (_) => HomeScreenControllerProvider()),
    Provider(create: (_) => RegisterScreenControllerProvider()),
  ];
}
