import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:product_app/data/datasources/product_remote_datasource.dart';
import 'package:product_app/data/repositories/product_repository_impl.dart';
import 'package:product_app/presentation/pages/product_page.dart';
import 'package:product_app/presentation/viewmodels/product_viewmodel.dart';

void main() {
  final datasource = ProductRemoteDatasource();
  final repository = ProductRepositoryImpl(datasource);
  final viewModel = ProductViewModel(repository);

  runApp(MyApp(viewModel: viewModel));
}

class MyApp extends StatelessWidget {
  final ProductViewModel viewModel;

  const MyApp({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductPage(viewModel: viewModel));
  }
}
