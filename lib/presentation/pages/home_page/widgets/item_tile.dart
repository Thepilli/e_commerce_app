import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/presentation/router/app_router.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    final ProductModel productModelProvider = Provider.of<ProductModel>(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(AppRouter.detail);
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: size.height * .3,
          width: size.width * .5,
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(productModelProvider.price.toString()), const Icon(IconlyBold.heart)],
              ),
              FancyShimmerImage(height: 100, boxFit: BoxFit.contain, imageUrl: productModelProvider.image),
              Text(
                productModelProvider.title.toString(),
                maxLines: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
