import 'package:e_commerce_app/core/constants/applystyle.dart';
import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:e_commerce_app/models/category_model.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.categories,
  });

  final List<CategoryModel>? categories;

  @override
  Widget build(BuildContext context) {
    final CategoryModel categoryModelProvider = Provider.of<CategoryModel>(context);

    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          FancyShimmerImage(imageUrl: categoryModelProvider.image),
          Positioned(
            bottom: 0,
            child: Container(
                height: 40.h,
                width: 150.w,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.5), borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    categoryModelProvider.name,
                    style: appstyle(16, AppColors.txtLight, FontWeight.normal),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
