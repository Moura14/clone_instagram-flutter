import 'package:clone_instagram/pages/home/widgets/story_circle.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = ResponsiveWrapper.of(context).isMobile;

    return Container(
      margin: EdgeInsets.only(top: mobile ? 15 : 35),
      height: 110,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (_, __) => const SizedBox(
                width: 16,
              ),
          itemCount: 16,
          itemBuilder: (_, i) => const StoryCircle()),
    );
  }
}
