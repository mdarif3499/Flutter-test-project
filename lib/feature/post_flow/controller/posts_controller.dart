import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/const/api_urls.dart';
import '../../../core/services/network_caller.dart';

class PostController extends GetxController {
  RxList<dynamic> postList = <dynamic>[].obs;
  RxBool isLoading = false.obs;
  RxBool isMoreLoading = false.obs;

  int limit = 10;
  int skip = 0;
  RxBool hasMoreData = true.obs;

  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    fetchPosts();

    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if (hasMoreData.value && !isMoreLoading.value) {
          loadMorePosts();
        }
      }
    });
  }

  Future<void> fetchPosts() async {
    isLoading.value = true;
    skip = 0;
    hasMoreData.value = true;

    try {
      var response = await NetworkCaller().getRequest(ApiUrls.postsUrl(limit, skip));

      if (response.isSuccess) {
        postList.assignAll(response.data['posts']);
        skip += limit;
        if (response.data['posts'].length < limit) hasMoreData.value = false;
      }
    } catch (e) {
      log("Post Fetch Error: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> loadMorePosts() async {
    isMoreLoading.value = true;
    try {
      var response = await NetworkCaller().getRequest(ApiUrls.postsUrl(limit, skip));

      if (response.isSuccess) {
        var newPosts = response.data['posts'];
        if (newPosts.isNotEmpty) {
          postList.addAll(newPosts);
          skip += limit;
        }
        if (newPosts.length < limit) hasMoreData.value = false;
      }
    } catch (e) {
      log("Load More Posts Error: $e");
    } finally {
      isMoreLoading.value = false;
    }
  }
}