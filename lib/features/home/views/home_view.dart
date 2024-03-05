import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '/core/data/models/product_model.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/app_routes.dart';
import '/core/utilities/assets_data.dart';
import '/core/utilities/extensions.dart';
import '/core/utilities/font_manager.dart';
import '/features/widgets/custom_product_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<CategoriesModel> categories = [
    CategoriesModel(
      title: 'Foods',
      isSelected: true,
    ),
    CategoriesModel(
      title: 'Drinks',
      isSelected: false,
    ),
    CategoriesModel(
      title: 'Snacks',
      isSelected: false,
    ),
    CategoriesModel(
      title: 'Sauce',
      isSelected: false,
    ),
  ];

  final List<ProductModel> products = [
    ProductModel(
      name: 'Veggie tomato mix',
      price: 'N1,900',
      image: AssetsData.product1Image,
    ),
    ProductModel(
      name: 'Spicy fish sauce',
      price: 'N2,300.99',
      image: AssetsData.product2Image,
    ),
    ProductModel(
      name: 'Veggie tomato mix',
      price: 'N1,900',
      image: AssetsData.product1Image,
    ),
    ProductModel(
      name: 'Spicy fish sauce',
      price: 'N2,300.99',
      image: AssetsData.product2Image,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.w,
        top: 5.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delicious\nfood for you',
            style: context.textTheme.titleMedium!.copyWith(
              fontFamily: FontManager.sFProRoundedFontFamily,
              fontWeight: FontWeight.w700,
            ),
            maxLines: 2,
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 10.w,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: context.textTheme.bodyMedium!.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
                prefixIcon: Container(
                  padding: EdgeInsets.all(3.5.w),
                  child: SvgPicture.asset(
                    AssetsData.searchSVG,
                    width: 2.w,
                    height: 2.h,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.shade100,
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...categories.map(
                  (e) => _buildCategoryItem(
                    context,
                    e.title,
                    e.isSelected,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Container(
            padding: EdgeInsets.only(
              right: 10.w,
              bottom: 1,
            ),
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                context.navigateToNamed(AppRoutes.allFoodsRoute);
              },
              child: Text(
                "see more",
                style: context.textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Expanded(
            child: Visibility(
              visible: categories
                  .firstWhere((element) => element.isSelected)
                  .title
                  .contains('Foods'),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    width: 10.w,
                  );
                },
                itemBuilder: (context, index) {
                  return CustomProductWidget(product: products[index % 2]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildCategoryItem(BuildContext context, String title, bool isSelected) {
    return InkWell(
      onTap: () {
        setState(() {
          for (var element in categories) {
            element.isSelected = false;
          }
          categories
              .firstWhere((element) => element.title == title)
              .isSelected = true;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4.w,
          vertical: 2.h,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: context.textTheme.bodyMedium!.copyWith(
                color: isSelected ? AppColors.primary : AppColors.greyColor,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Container(
              height: 0.5.h,
              width: 17.w,
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primary : Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesModel {
  final String title;
  bool isSelected;

  CategoriesModel({
    required this.title,
    this.isSelected = false,
  });
}
