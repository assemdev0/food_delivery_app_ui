import 'package:flutter/material.dart';
import '/core/data/models/product_model.dart';
import '/core/theme/app_color.dart';
import '/core/utilities/extensions.dart';
import '/features/widgets/custom_product_widget.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class AllFoodsView extends StatefulWidget {
  const AllFoodsView({super.key});

  @override
  State<AllFoodsView> createState() => _AllFoodsViewState();
}

class _AllFoodsViewState extends State<AllFoodsView> {
  final List<ProductModel> products = [
    ProductModel(
      name: 'Veggie tomato mix',
      price: 'N1,900',
      image: 'assets/images/product1.png',
    ),
    ProductModel(
      name: 'Spicy fish sauce',
      price: 'N2,300.99',
      image: 'assets/images/product2.png',
    ),
    ProductModel(
      name: 'Spicy chicken',
      price: 'N2,300.99',
      image: 'assets/images/product3.png',
    ),
    ProductModel(
      name: 'Veggie tomato mix',
      price: 'N1,900',
      image: 'assets/images/product1.png',
    ),
    ProductModel(
      name: 'Spicy fish sauce',
      price: 'N2,300.99',
      image: 'assets/images/product2.png',
    ),
    ProductModel(
      name: 'Spicy chicken',
      price: 'N2,300.99',
      image: 'assets/images/product3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          initialValue: 'Spicy chieckns',
          decoration: InputDecoration(
            hintText: 'Search for food',
            hintStyle: context.textTheme.bodyMedium,
            border: InputBorder.none,
          ),
        ),
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
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(35),
            topRight: Radius.circular(35),
          ),
        ),
        margin: EdgeInsets.only(top: 2.5.h),
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 2.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Found  6 results',
              style: context.textTheme.titleMedium,
            ),
            SizedBox(
              height: 2.h,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                addRepaintBoundaries: true,
                addAutomaticKeepAlives: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                      top: index.isEven ? 0 : 6.h,
                    ),
                    child: SizedBox(
                      height: 37.h,
                      child: CustomProductWidget(
                        product: products[index],
                        elevation: 10.0,
                      ),
                    ),
                  );
                },
                crossAxisCount: 2,
                mainAxisSpacing: 3.h,
                crossAxisSpacing: 7.w,
                itemCount: products.length,
                staggeredTileBuilder: (int index) {
                  return const StaggeredTile.fit(1);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
