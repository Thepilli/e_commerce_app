import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: 120.w,
        height: 120.h,
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.secondary),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('get special deal'), Text('up to 40% off')],
        ),
      ),
    );
  }
}
