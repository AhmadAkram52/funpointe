import 'package:flutter/material.dart';
import 'package:funpointe/utils/constants/routes.dart';
import 'package:funpointe/utils/theme/theme.dart';
import 'package:get/get.dart';

import 'features/authentication/screens/splash/splash_screen.dart';

class FunPointe extends StatelessWidget {
  const FunPointe({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ATheme.lightTheme,
      initialRoute: SplashScreen.route,
      getPages: APageRoutes.aPagesRoutes,
    );
  }
}
