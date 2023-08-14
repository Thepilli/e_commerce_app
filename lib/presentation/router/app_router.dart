import 'package:e_commerce_app/presentation/pages/all_items_page/all_items_page.dart';
import 'package:e_commerce_app/presentation/pages/all_users_page/all_users_page.dart';
import 'package:e_commerce_app/presentation/pages/categories_page/categories_page.dart';
import 'package:e_commerce_app/presentation/pages/detail_page/detail_page.dart';
import 'package:e_commerce_app/core/exceptions/route_excepions.dart';
import 'package:e_commerce_app/presentation/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static const String home = 'home';
  static const String detail = 'detail';
  static const String allItems = 'allItems';
  static const String categories = 'categories';
  static const String allUsers = 'allUsers';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
          builder: (_) {
            return const HomePage();
          },
        );
      case detail:
        return MaterialPageRoute(
          builder: (_) => const DetailPage(),
        );
      case allItems:
        return MaterialPageRoute(
          builder: (_) => const AllItemsPage(),
        );
      case categories:
        return MaterialPageRoute(
          builder: (_) => const CategoriesPage(),
        );
      case allUsers:
        return MaterialPageRoute(
          builder: (_) => const AllUsersPage(),
        );

      default:
        debugPrint('Route not found!');
        throw const RouteException('Route not found!');
    }
  }
}
