import 'package:flutter/material.dart';
import '/core/global/widgets/custom_buttom_widget.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/app_routes.dart';
import '/core/utilities/app_strings.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/extensions.dart';
import '/core/utilities/font_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.all(5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 10.w,
                      backgroundColor: AppColors.whiteColor,
                      child: Image.asset(
                        AssetsData.logoImage,
                        width: 15.w,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      AppStrings.foodForEveryone,
                      style: context.textTheme.titleLarge!.copyWith(
                        color: AppColors.whiteColor,
                        fontFamily: FontManager.sFProRoundedFontFamily,
                        fontWeight: FontWeight.w800,
                        fontSize: 32.sp,
                        height: 1,
                      ),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          right: 10.w,
                          top: 5.h,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.bottomRight,
                        child: Transform.scale(
                          scale: 1.6,
                          child: Stack(
                            children: [
                              Image.asset(AssetsData.boyImage),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 11.h,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 71, 11, 0.1),
                                        AppColors.primary,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 13.w,
                          bottom: 1.h,
                        ),
                        width: 100.w,
                        child: Transform.scale(
                          scale: 1.65,
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 9.w,
                                ),
                                child: Image.asset(
                                  AssetsData.girlImage,
                                  filterQuality: FilterQuality.high,
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  height: 11.h,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color.fromRGBO(255, 71, 11, 0.1),
                                        AppColors.primary,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            CustomButtonWidget(
              text: AppStrings.getStarted,
              onPressed: () {
                context.navigateToNamedWithPopUntil(AppRoutes.authRoute);
              },
              backgroundColor: AppColors.whiteColor,
              textColor: AppColors.primary,
            ),
            SizedBox(
              height: 4.h,
            )
          ],
        ),
      ),
    );
  }
}
