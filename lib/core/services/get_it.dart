import 'package:get_it/get_it.dart';
import 'package:marketi_e_commerce_app/core/database/cashe/cashe_helper.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
