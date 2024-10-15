import 'package:flutter/material.dart';
import 'package:go_router_package/projects/routes/app_router_config.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = MyAppRouter.returnRouter(false);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
