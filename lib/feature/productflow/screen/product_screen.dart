import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:najwa_brighach/core/const/app_sizes.dart';
import '../controller/product_controller.dart';
import '../../../core/const/app_colors.dart';
import '../widget/product_card.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProductController());

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Our Products", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Obx(() {
        if (controller.isLoading.value && controller.productList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        return RefreshIndicator(
          onRefresh: () => controller.fetchProducts(),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  controller: controller.scrollController, 
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, 
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.75, 
                  ),
                  itemCount: controller.productList.length,
                  itemBuilder: (context, index) {
                    final product = controller.productList[index];
                    return ProductCard(
                      product: controller.productList[index],
                      onTap: () {
                      },
                    );
                  },
                ),
              ),

              if (controller.isMoreLoading.value)
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                ),
              SizedBox(height: getHeight(20),)
            ],
          ),
        );
      }),
    );
  }

}