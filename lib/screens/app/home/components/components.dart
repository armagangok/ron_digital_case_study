import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../global/networking/models/product_model.dart';
import '../../../../global/networking/view-models/product_viewmodel.dart';
import './text_fields.dart';
import '../../../../core/components/sized_box.dart';

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

class DataWidget extends StatelessWidget {
  const DataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductViewmodel _productViewModel =
        Provider.of<ProductViewmodel>(context);
    return SizedBox(
      height: 400,
      child: FutureBuilder<List<ProductModel>>(
        future: _productViewModel.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                var product = snapshot.data![index];
                return ListTile(
                  title: Text(product.title!),
                  subtitle: Text("$product.id"),
                );
              },
            );
          } else if (snapshot.hasError) {
            const Center(
              child: Text("Error occured"),
            );
          }
          return const Center(
            child: Text("Waiting for the data"),
          );
        },
      ),
    );
  }
}
