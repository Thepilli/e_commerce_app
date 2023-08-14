// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/presentation/pages/home_page/widgets/promo_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Theme.of(context).colorScheme.secondary),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PromoBanner(),
          Image.asset(
            'assets/images/pika.png',
            width: 200.w,
          ),
        ],
      ),
    );
  }
}
