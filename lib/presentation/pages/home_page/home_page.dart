// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/models/product_model.dart';
import 'package:e_commerce_app/presentation/pages/home_page/widgets/my_search_bar.dart';
import 'package:e_commerce_app/presentation/pages/home_page/widgets/my_swiper.dart';
import 'package:e_commerce_app/presentation/router/app_router.dart';
import 'package:e_commerce_app/services/product_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'widgets/item_grid_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController searchController;
  late List<ProductModel>? products = [];

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
    _getData();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void _getData() async {
    products = (await ProductApiService.getAllProducts())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Home'),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRouter.categories);
            },
            icon: Icon(IconlyBold.category)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRouter.allUsers);
              },
              icon: Icon(IconlyBold.user3))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MySearchBar(searchController: searchController),
            MySwiper(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('Latest products')),
                Text('See all'),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRouter.allItems);
                    },
                    icon: Icon(IconlyBold.play))
              ],
            ),
            FutureBuilder<List<ProductModel>?>(
              future: ProductApiService.getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return ItemGridView(
                  size: size,
                  products: snapshot.data!,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
