import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/global_widget/custom_appbar.dart';
import '../controller/posts_controller.dart';
import '../widget/post_card.dart';

class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(PostController());
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: const CustomAppBar(title: "Recent Posts"),
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
              return const Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
              );
            }
          },
        );
      }),
    );
  }
}