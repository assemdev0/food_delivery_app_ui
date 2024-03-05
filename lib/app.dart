import 'package:flutter/material.dart';
import '/core/theme/theme_data/light_them.dart';
import '/core/utilities/app_routes.dart';
import '/core/utilities/app_strings.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FoodDeliveryAppUi extends StatelessWidget {
  const FoodDeliveryAppUi({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: AppStrings.appName,
          theme: getAppLightTheme,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.onGenerateRoute,
          initialRoute: AppRoutes.initialRoute,
        );
      },
    );
  }
}
