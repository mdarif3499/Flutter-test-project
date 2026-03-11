import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/api_urls.dart';
import '../../../core/services/network_caller.dart';

class ProductController extends GetxController {
  RxList<dynamic> productList = <dynamic>[].obs;
  RxBool isLoading = false.obs;
  RxBool isMoreLoading = false.obs;

  int limit = 10;
  int skip = 0;
  RxBool hasMoreData = true.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchProducts();

    // পেজিনেশন হ্যান্ডলার
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if (hasMoreData.value && !isMoreLoading.value) {
          loadMoreProducts();
        }
      }
    });
  }

  // ডাটা গেট করার জন্য getRequest ব্যবহার করা হয়েছে
  Future<void> fetchProducts() async {
    isLoading.value = true;
    skip = 0;
    hasMoreData.value = true;

    String url = ApiUrls.productsUrl(limit, skip);

    try {
      // আপনার নতুন getRequest মেথড কল করা হলো
      var response = await NetworkCaller().getRequest(url);

      if (response.isSuccess) {
        productList.assignAll(response.data['products']);
        skip += limit;

        if (response.data['products'].length < limit) {
          hasMoreData.value = false;
        }
      } else {
        log("Error: ${response.message}");
      }
    } catch (e) {
      log("Fetch Products Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadMoreProducts() async {
    isMoreLoading.value = true;
    String url = ApiUrls.productsUrl(limit, skip);

    try {
      var response = await NetworkCaller().getRequest(url);

      if (response.isSuccess) {
        var newProducts = response.data['products'];
        if (newProducts.isNotEmpty) {
          productList.addAll(newProducts);
          skip += limit;
        }
        if (newProducts.length < limit) {
          hasMoreData.value = false;
        }
      }
    } catch (e) {
      log("Load More Error: $e");
    } finally {
      isMoreLoading.value = false;
    }
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }
}