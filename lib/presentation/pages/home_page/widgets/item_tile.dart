import 'package:e_commerce_app/core/constants/applystyle.dart';
import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/models/product_provider.dart';
import 'package:e_commerce_app/presentation/router/app_router.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemTile extends StatelessWidget {
  const ItemTile({
    Key? key,
    required this.size,
    required this.products,
  }) : super(key: key);

  final Size size;
  final ProductModel products;

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: GestureDetector(
        onTap: () {
          productProvider.setProductModel(products);

          Navigator.of(
            context,
          ).pushNamed(
            AppRouter.detail,
            arguments: products, // Pass the ProductModel as arguments
          );
        },
        child: Container(
          padding: const EdgeInsets.all(8.0),
          height: size.height * .3,
          width: size.width * .5,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(.5),
              blurRadius: 6,
              spreadRadius: 3,
              offset: const Offset(3, 6),
            )
          ], color: AppColors.whiteColor, borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${products.price}', style: appstyleNormal(15, AppColors.txtDark, FontWeight.normal)),
                  const Icon(
                    Icons.favorite_border,
                    color: AppColors.notCompleted,
                  )
                ],
              ),
              Hero(tag: products.id, child: FancyShimmerImage(height: 100, boxFit: BoxFit.contain, imageUrl: products.image)),
              Text(
                products.title,
                style: appstyleNormal(15, AppColors.txtDark, FontWeight.normal),
                maxLines: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
