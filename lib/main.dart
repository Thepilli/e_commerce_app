import 'package:e_commerce_app/core/setting/setting_controller.dart';
import 'package:e_commerce_app/core/setting/setting_service.dart';
import 'package:e_commerce_app/core/themes/app_theme.dart';
import 'package:e_commerce_app/models/product_provider.dart';
import 'package:e_commerce_app/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final settingsController = SettingsController(SettingsService());
  await settingsController.loadSettings();
  runApp(ChangeNotifierProvider(
    create: (context) => ProductProvider(),
    child: MyApp(
      settingsController: settingsController,
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.settingsController});
  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    debugPrint(screenSize.toString());
    return ScreenUtilInit(
        designSize: const Size(411.4, 866.3),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Ecommerce Application',
            theme: Themes.lightTheme,
            darkTheme: Themes.darkTheme,
            themeMode: settingsController.themeMode,
            initialRoute: AppRouter.home,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        });
  }
}
