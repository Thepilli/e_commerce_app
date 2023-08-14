import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('categor'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('title'),
                  Text('price'),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 180.h,
                child: Swiper(
                  itemCount: 2, //eventually the length of imageges
                  itemBuilder: (context, index) {
                    return Image.asset(
                      'assets/images/bulba.png',
                      width: 200.w,
                    );
                  },
                ),
              ),
              const Text('desc'),
              const Text('desc dtail'),
            ],
          ),
        ),
      ),
    );
  }
}
