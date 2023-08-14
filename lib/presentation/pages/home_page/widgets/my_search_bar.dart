import 'package:e_commerce_app/core/constants/applystyle.dart';
import 'package:e_commerce_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
    required this.searchController,
  });

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColors.blackColor.withOpacity(.5),
              blurRadius: 6,
              spreadRadius: 3,
              offset: const Offset(3, 6),
            )
          ],
        ),
        child: TextField(
          controller: searchController,
          keyboardType: TextInputType.text,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            suffixIcon: const Icon(IconlyBold.search),
            filled: true,
            fillColor: Theme.of(context).colorScheme.secondary,
            label: Text(
              "Search",
              style: appstyle(20, AppColors.txtDark, FontWeight.w100),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
