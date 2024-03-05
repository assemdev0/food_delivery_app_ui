import 'package:flutter/material.dart';
import '/core/data/models/product_model.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import '/core/utilities/font_manager.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomProductWidget extends StatelessWidget {
  const CustomProductWidget({super.key, required this.product, this.elevation});

  final ProductModel product;
  final double? elevation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 50.h,
          width: 50.w,
          child: Card(
            elevation: elevation,
            margin: EdgeInsets.only(
              top: 8.h,
              bottom: 1.h,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
                vertical: 4.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    product.name,
                    style: context.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 21.sp,
                      fontFamily: FontManager.sFProRoundedFontFamily,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    product.price,
                    style: context.textTheme.titleSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 17.sp,
                      color: AppColors.primary,
                      fontFamily: FontManager.sFProRoundedFontFamily,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.transparentColor,
              shape: BoxShape.circle,
            ),
            clipBehavior: Clip.antiAlias,
            height: 16.h,
            width: 16.h,
            child: Image.asset(
              product.image,
              // fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
