import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// Skeleton placeholders matching [NewsTitle] layout while news loads.
class NewsListSkeleton extends StatelessWidget {
  const NewsListSkeleton({super.key, this.itemCount = 6});

  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.sliver(
      enabled: true,
      child: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Loading news title placeholder text for skeleton effect',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Loading description placeholder text for skeleton loading state',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF757575),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            );
          },
          childCount: itemCount,
        ),
      ),
    );
  }
}
