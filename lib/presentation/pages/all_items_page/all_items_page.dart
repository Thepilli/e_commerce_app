import 'package:e_commerce_app/presentation/pages/all_items_page/widgets/all_items_grid_view.dart';
import 'package:flutter/material.dart';

class AllItemsPage extends StatelessWidget {
  const AllItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All products'),
      ),
      body: AllItemsGridView(size: MediaQuery.of(context).size),
    );
  }
}
