import 'package:flutter/material.dart';
import 'package:marketi_e_commerce_app/core/database/cashe/cashe_helper.dart';
import 'package:marketi_e_commerce_app/core/routs/app_routs.dart';
import 'package:marketi_e_commerce_app/core/services/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setup();
  await getIt<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
