import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/database/cashe/cashe_helper.dart';
import 'package:marketi_e_commerce_app/core/routs/app_routs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 🔹 () مهم
  await CacheHelper.init(); // 🔹 static method
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router, // 🔹 تأكدي إن router معرف صح بالـ routes كلها
    );
  }
}
