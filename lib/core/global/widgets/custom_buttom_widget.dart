import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.whiteColor,
    this.height,
    this.minWidth,
  });

  final String text;
  final Function() onPressed;
  final Color backgroundColor;
  final Color textColor;

  final double? height;
  final double? minWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        onPressed: () {
          onPressed();
        },
        height: height ?? 9.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        minWidth: minWidth ?? 80.w,
        color: backgroundColor,
        child: Text(
          text,
          style: context.textTheme.bodyLarge!.copyWith(
            color: textColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
