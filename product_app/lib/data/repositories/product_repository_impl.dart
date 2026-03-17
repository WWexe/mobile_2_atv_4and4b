import 'package:product_app/data/datasources/product_remote_datasource.dart';
import 'package:product_app/data/datasources/product_cache_datasource.dart';
import 'package:product_app/domain/entities/product.dart';
import 'package:product_app/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDatasource datasource;
  final ProductCacheDatasource cache;

  ProductRepositoryImpl(this.datasource, this.cache);

  @override
  Future<List<Product>> getProducts() async {
    final cached = cache.get();

    if (cached != null) {
      return cached
          .map(
            (m) => Product(
              id: m.id,
              title: m.title,
              price: m.price,
              image: m.image,
            ),
          )
          .toList();
    }
    final models = await datasource.getProducts();

    return models
        .map(
          (m) =>
              Product(id: m.id, title: m.title, price: m.price, image: m.image),
        )
        .toList();
  }
}
