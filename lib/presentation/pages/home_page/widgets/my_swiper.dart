import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce_app/presentation/pages/home_page/widgets/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MySwiper extends StatelessWidget {
  const MySwiper({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 180.h,
      child: Swiper(
        autoplay: false,
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(activeColor: Theme.of(context).colorScheme.primary)),
        itemCount: 3,
        itemBuilder: (context, index) {
          return const TopBanner();
        },
      ),
    );
  }
}
