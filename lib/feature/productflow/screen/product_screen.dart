import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import '../../../core/controller/app_state_controller.dart';
import '../../../core/global_widget/custom_appbar.dart';
import '../../../core/global_widget/custom_text.dart';
import '../controller/product_controller.dart';
import '../../../core/const/app_colors.dart';
import '../widget/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productController = Get.find<ProductController>();
    final appStateController = Get.find<AppStateController>();

    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: const CustomAppBar(title: "Our Products"),
      body: Obx(() {
        if (productController.isLoading.value && productController.productList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: () => productController.fetchProducts(),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  controller: productController.scrollController,
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75,
                  ),
                  itemCount: productController.productList.length,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: productController.productList[index],
                      onTap: () {},
                    );
                  },
                ),
              ),

              if (productController.isMoreLoading.value)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                ),
              const SizedBox(height: 20)
            ],
          ),
        );
      }),
    );
  }
}