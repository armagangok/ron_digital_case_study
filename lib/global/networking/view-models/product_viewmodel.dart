import 'package:ron_digital/global/networking/models/product_model.dart';


import '../services/base_product_service.dart';

import '../services/product_service.dart';

class ProductViewmodel implements BaseProductService {
  final ProductService _service = ProductService();

  Future<List<ProductModel>> getData() async {
    return _service.getData();
  }
}
