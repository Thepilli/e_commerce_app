import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/presentation/pages/home_page/widgets/item_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({
    super.key,
    required this.size,
    required this.products,
  });

  final Size size;
  final List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0, childAspectRatio: .9),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int index) {
        return ChangeNotifierProvider.value(value: products[index], child: ItemTile(size: size));
      },
    );
  }
}
