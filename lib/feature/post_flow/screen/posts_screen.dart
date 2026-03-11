import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/posts_controller.dart';
import '../widget/post_card.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PostController());

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(title: const Text("Recent Posts"), centerTitle: true),
      body: Obx(() {
        if (controller.isLoading.value && controller.postList.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          controller: controller.scrollController,
          padding: const EdgeInsets.all(16),
          itemCount: controller.postList.length + (controller.isMoreLoading.value ? 1 : 0),
          itemBuilder: (context, index) {
            if (index < controller.postList.length) {
              return PostCard(post: controller.postList[index]);
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        );
      }),
    );
  }
}