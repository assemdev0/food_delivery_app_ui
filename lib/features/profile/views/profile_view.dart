import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/global/widgets/custom_buttom_widget.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My profile'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: AppColors.blackColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 2.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Information',
              style: context.textTheme.titleSmall,
            ),
            SizedBox(
              height: 19.h,
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AssetsData.womanImage,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Marvis Ighedosa',
                              style: context.textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'dosamarvis@gmail.com',
                              style: context.textTheme.bodySmall!.copyWith(
                                color: AppColors.blackWithOpacityColor,
                                fontSize: 14.5.sp,
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'No 15 uti street off ovie palace road effurun delta state',
                              style: context.textTheme.bodySmall!.copyWith(
                                color: AppColors.blackWithOpacityColor,
                                fontSize: 14.5.sp,
                              ),
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Payment Method',
              style: context.textTheme.titleSmall,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 1.5.h,
                ),
                child: Column(
                  children: [
                    _buildRadioButton(
                      title: 'Card',
                      isSelected: groupValue == 0,
                      value: 0,
                      image: AssetsData.creditCardSVG,
                      backgroundColor: const Color(0xffF47B0A),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 5.w,
                        left: 20.w,
                      ),
                      child: const Divider(),
                    ),
                    _buildRadioButton(
                      title: 'Bank account',
                      isSelected: groupValue == 1,
                      value: 1,
                      image: AssetsData.bankSVG,
                      backgroundColor: const Color(0xffEB4796),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 5.w,
                        left: 20.w,
                      ),
                      child: const Divider(),
                    ),
                    _buildRadioButton(
                      title: 'Paypal',
                      isSelected: groupValue == 2,
                      value: 2,
                      image: AssetsData.paypalSVG,
                      backgroundColor: const Color(0xff0038FF),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            CustomButtonWidget(
              text: 'Updatet',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  _buildRadioButton({
    required String title,
    required bool isSelected,
    required int value,
    required String image,
    required Color backgroundColor,
  }) {
    return RadioListTile<int>.adaptive(
      title: Row(
        children: [
          Container(
            height: 7.h,
            width: 7.h,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: SvgPicture.asset(
                image,
                height: 2.5.h,
                width: 2.5.h,
              ),
            ),
          ),
          SizedBox(
            width: 3.w,
          ),
          Text(
            title,
            style: context.textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
      value: value,
      groupValue: groupValue,
      onChanged: (value) {
        setState(() {
          groupValue = value!;
        });
      },
    );
  }
}
