import 'package:e_commerce_app/models/category_model.dart';
import 'package:e_commerce_app/presentation/pages/categories_page/widgets/category_grid_view.dart';
import 'package:e_commerce_app/services/category_service.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  late List<CategoryModel>? categories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Browse categories'),
      ),
      body: FutureBuilder<List<CategoryModel>?>(
        future: CategoryApiService.getAllCategories(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return CategoryGridView(categories: snapshot.data);
        },
      ),
    );
  }
}
