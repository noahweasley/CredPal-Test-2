import 'package:credpal_test/app_init.dart';
import 'package:credpal_test/navigation/app_router.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

void main() async {
  await AppInitialization.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Credpal',
      builder: OneContext().builder,
      key: OneContext().key,
      theme: ThemeData(fontFamily: 'Avenir'),
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
