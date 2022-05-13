import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:ron_digital/screens/app/home/view-models/qr_viewmodel.dart';

// import '../view-models/controller_provider.dart';
// import '../../../../core/extension/context_extension.dart';

class QRWidget extends StatelessWidget {
  const QRWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // HomeScreenControllerProvider _controllers =
    //     Provider.of<HomeScreenControllerProvider>(context);

    

    QrViewModel _qrViewModel = Provider.of<QrViewModel>(context);

    return QrImage(
      backgroundColor: Colors.white,
      data: _qrViewModel.getUrl,
      size: 250,
    );
  }
}
