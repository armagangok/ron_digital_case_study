import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../view-models/qr_viewmodel.dart';

class QRWidget extends StatelessWidget {
  const QRWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QrViewModel _qrViewModel = Provider.of<QrViewModel>(context);

    return QrImage(
      backgroundColor: Colors.white,
      data: _qrViewModel.getUrl,
      size: 250,
    );
  }
}
