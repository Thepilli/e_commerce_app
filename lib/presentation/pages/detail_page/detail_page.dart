import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/core/constants/applystyle.dart';
import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:e_commerce_app/core/constants/j_box.dart';
import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/models/product_provider.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    final ProductModel? productModel = productProvider.productModel;
    if (productModel == null) {
      return const Scaffold(
        body: Center(
          child: Text('Error: Product details not available.'),
        ),
      );
    }
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: Theme.of(context).colorScheme.primary,
        elevation: 2,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(IconlyBold.arrowLeftSquare)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(IconlyBold.bag))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productModel.category, style: appstyle(20, AppColors.txtDark, FontWeight.normal)),
                JBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        productModel.title,
                        style: appstyle(15, AppColors.txtDark, FontWeight.normal),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Text(
                        '\$${productModel.price}',
                        style: appstyle(20, AppColors.txtDark, FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                JBox(height: 20.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                  child: Swiper(
                    itemCount: 2, // Eventually the length of images
                    itemBuilder: (context, index) {
                      return Hero(
                          tag: productModel.id, child: FancyShimmerImage(boxFit: BoxFit.contain, imageUrl: productModel.image));
                    },
                  ),
                ),
                JBox(height: 20.h),
                Text(
                  'Description',
                  style: appstyle(20, AppColors.txtDark, FontWeight.normal),
                ),
                JBox(height: 20.h),
                Text(
                  productModel.description,
                  style: appstyleNormal(15, AppColors.txtDark, FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
