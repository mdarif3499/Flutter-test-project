import 'package:flutter/material.dart';
import 'package:najwa_brighach/core/global_widget/custom_text.dart';

class PostCard extends StatelessWidget {
  final dynamic post;

  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: theme.brightness == Brightness.light
                ? Colors.black12
                : Colors.black54,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: post['title'] ?? "",
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: theme.textTheme.titleLarge?.color,
          ),
          const SizedBox(height: 8),
          CustomText(
            text: post['body'] ?? "",
            maxLines: 3,
            textOverflow: TextOverflow.ellipsis,
            fontSize: 14,
            color: theme.hintColor,
            height: 1.5,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.thumb_up_off_alt, size: 16, color: Colors.blue),
              CustomText(
                text: " ${post['reactions']?['likes'] ?? 0} Likes",
                fontSize: 12,
                color: theme.textTheme.bodySmall?.color,
              ),
              const SizedBox(width: 16),
              const Icon(Icons.remove_red_eye_outlined, size: 16, color: Colors.grey),
              CustomText(
                text: " ${post['views'] ?? 0} Views",
                fontSize: 12,
                color: theme.textTheme.bodySmall?.color,
              ),
            ],
          ),
        ],
      ),
    );
  }
}