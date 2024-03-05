import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/app_routes.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/extensions.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'home_view.dart';

class HomeLayoutView extends StatefulWidget {
  const HomeLayoutView({super.key});

  @override
  State<HomeLayoutView> createState() => _HomeLayoutViewState();
}

class _HomeLayoutViewState extends State<HomeLayoutView> {
  final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      controller: _advancedDrawerController,
      animateChildDecoration: true,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      backdropColor: Theme.of(context).primaryColor,
      openScale: 0.8,
      openRatio: 0.45,
      drawer: Drawer(
        child: Container(
          color: Theme.of(context).primaryColor,
          alignment: Alignment.bottomCenter,
          child: Text(
            'Created by: Assem Ashraf',
            style: context.textTheme.bodySmall!.copyWith(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
      backdrop: Container(
        color: AppColors.primary,
        height: 100.h,
      ),
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 20.w,
          leading: Container(
            margin: EdgeInsets.only(left: 5.w),
            child: IconButton(
              icon: Image.asset(AssetsData.menuImage),
              onPressed: () {
                _advancedDrawerController.showDrawer();
              },
            ),
          ),
          actions: [
            IconButton(
              icon: Image.asset(AssetsData.shoppingCartImage),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 8.h,
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.5),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: SvgPicture.asset(
                    AssetsData.homeSVG,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                onTap: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.favoriteSVG,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.userSVG,
                ),
                onPressed: () {
                  context.navigateToNamed(AppRoutes.profileRoute);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  AssetsData.historySVG,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: const HomeView(),
      ),
    );
  }
}
