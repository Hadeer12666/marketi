import 'package:go_router/go_router.dart';

void customReplacementNavigat(context, String path) {
  GoRouter.of(context).pushReplacement(path);
}
