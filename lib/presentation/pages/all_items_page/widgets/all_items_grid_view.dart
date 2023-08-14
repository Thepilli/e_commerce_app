import 'package:flutter/material.dart';

class AllItemsGridView extends StatelessWidget {
  const AllItemsGridView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 0, childAspectRatio: .9),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        // return ItemTile(size: size, product: null)
        return null;
      },
    );
  }
}
