import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:e_commerce_app/presentation/pages/home_page/widgets/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySwiper extends StatelessWidget {
  const MySwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(.5),
              blurRadius: 6,
              spreadRadius: 3,
              offset: const Offset(3, 6),
            )
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: 180.h,
        child: Swiper(
          autoplay: false,
          duration: 1000,
          curve: Curves.linear,
          pagination: SwiperPagination(
              alignment: Alignment.bottomCenter,
              builder: DotSwiperPaginationBuilder(activeColor: Theme.of(context).colorScheme.primary)),
          itemCount: 3,
          itemBuilder: (context, index) {
            return const TopBanner();
          },
        ),
      ),
    );
  }
}
