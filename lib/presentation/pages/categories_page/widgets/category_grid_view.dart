import 'package:e_commerce_app/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category_tile.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.categories,
  });

  final List<CategoryModel>? categories;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: categories!.length,
      itemBuilder: (BuildContext context, int index) {
        return ChangeNotifierProvider.value(value: categories![index], child: CategoryTile(categories: categories));
      },
    );
  }
}
