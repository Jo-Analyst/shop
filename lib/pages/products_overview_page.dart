import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product_list.dart';
import '../components/Product_grid.dart';

enum FilterOptions { favorite, all }

class ProductOverviewPage extends StatelessWidget {
  const ProductOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Minha loja"),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text('Somente favoritos'),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text('Todos'),
              ),
            ],
            onSelected: (FilterOptions selecteValue) {
              selecteValue == FilterOptions.favorite
                  ? provider.showFavoriteOnly()
                  : provider.showAll();
            },
          )
        ],
      ),
      body: const ProductGrid(),
    );
  }
}
