import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_connect/src/common/resources/theme_manager.dart';
import 'package:news_connect/src/features/userCollection/presentation/pages/user_page.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: getApplicationTheme(),
            navigatorKey: navigatorKey,
            home: UserPage());
      },
    );
  }
}
