import 'package:flutter/material.dart';
import '../components/Product_grid.dart';

class ProductOverviewPage extends StatelessWidget {
  const ProductOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Minha loja"),
      ),
      body: const ProductGrid(),
    );
  }
}

