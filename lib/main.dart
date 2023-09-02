import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:u_bazar/model/product_model.dart';
import 'package:u_bazar/component/app_colors.dart';
import 'package:u_bazar/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: AppColors.deepGreen));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ProductModel())],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: AppColors.bgColor,
              primarySwatch: Colors.green),
          home: const SplashScreen(),
        );
      },
    );
  }
}
