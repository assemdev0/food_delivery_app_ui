import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';
import '/core/theme/text_style.dart';
import '/core/utilities/font_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData get getAppLightTheme => ThemeData(
      primarySwatch: AppColors.primaryMaterialColor,
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      colorScheme: ThemeData.light().colorScheme.copyWith(
            primary: AppColors.primary,
          ),
      appBarTheme: ThemeData.light().appBarTheme.copyWith(
            backgroundColor: AppColors.backgroundColor,
            centerTitle: true,
            titleTextStyle: getBoldStyle.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
            ),
            elevation: 0,
            iconTheme: ThemeData.light().iconTheme.copyWith(
                  color: AppColors.primary,
                ),
          ),
      textTheme: ThemeData.light()
          .textTheme
          .apply(fontFamily: FontManager.defaultFontFamily)
          .copyWith(
            titleLarge: getBoldStyle.copyWith(
              fontSize: 30.sp,
            ),
            titleMedium: getBoldStyle.copyWith(
              fontSize: 25.sp,
            ),
            titleSmall: getBoldStyle.copyWith(
              fontSize: 20.sp,
            ),
            headlineLarge: getSemiBoldStyle.copyWith(
              fontSize: 20.sp,
            ),
            headlineMedium: getSemiBoldStyle.copyWith(
              fontSize: 18.sp,
            ),
            headlineSmall: getSemiBoldStyle.copyWith(
              fontSize: 16.sp,
            ),
            bodyLarge: getRegularStyle.copyWith(
              fontSize: 18.sp,
            ),
            bodyMedium: getRegularStyle.copyWith(
              fontSize: 16.sp,
            ),
            bodySmall: getRegularStyle.copyWith(
              fontSize: 14.sp,
            ),
          ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: getMediumStyle.copyWith(
          fontWeight: FontWeight.w600,
        ),
        labelStyle: getSemiBoldStyle.copyWith(
          fontWeight: FontWeight.w600,
        ),
        fillColor: AppColors.textFormFieldFilledColor,
        filled: false,
      ),
      cardColor: AppColors.whiteColor,
      cardTheme: ThemeData.light().cardTheme.copyWith(
            elevation: 8,
            shadowColor: AppColors.blackWithOpacityColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: AppColors.whiteColor,
            clipBehavior: Clip.antiAlias,
            surfaceTintColor: AppColors.whiteColor,
          ),
    );
