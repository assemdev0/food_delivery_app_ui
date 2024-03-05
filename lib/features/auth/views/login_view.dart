import 'package:flutter/material.dart';
import '/core/global/widgets/custom_buttom_widget.dart';
import '/core/theme/app_color.dart';
import '/core/theme/text_style.dart';
import '/core/utilities/app_routes.dart';
import '/core/utilities/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 10.h,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TextFormField(
            style: getSemiBoldStyle,
            decoration: const InputDecoration(
              labelText: 'Email address',
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          TextFormField(
            obscuringCharacter: '*',
            obscureText: true,
            style: getSemiBoldStyle,
            decoration: const InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: InkWell(
              onTap: () {},
              child: Text(
                'Forgot passcode?',
                style: getMediumStyle.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          CustomButtonWidget(
            text: 'Login',
            onPressed: () {
              context.navigateToNamedWithPopUntil(AppRoutes.homeRoute);
            },
          )
        ],
      ),
    );
  }
}
