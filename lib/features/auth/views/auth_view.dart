import 'package:flutter/material.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/extensions.dart';
import '/features/auth/views/login_view.dart';
import '/features/auth/views/sign_up_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 38.h,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AssetsData.logoImage),
                  ],
                ),
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.symmetric(
                horizontal: 8.w,
              ),
              dividerHeight: 0,
              padding: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              tabs: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 1.h,
                  ),
                  child: Text(
                    'Login',
                    style: context.textTheme.headlineMedium!.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 1.h,
                  ),
                  child: Text(
                    'Sign-up',
                    style: context.textTheme.headlineMedium!.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                ),
              ],
            ),
            shadowColor: AppColors.blackColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          SliverFillRemaining(
            child: TabBarView(
              controller: _tabController,
              children: const [
                LoginView(),
                SignUpView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
