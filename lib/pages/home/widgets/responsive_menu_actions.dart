import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ResponsiveMenuAcrions extends StatelessWidget {
  const ResponsiveMenuAcrions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ResponsiveVisibility(
          visible: false,
          visibleWhen: const [Condition.smallerThan(name: TABLET)],
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
        const SizedBox(
          width: 4,
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
        const SizedBox(
          width: 16,
        ),
        const CircleAvatar(
          radius: 16,
          backgroundImage: NetworkImage(
              'https://images.pexels.com/photos/681391/pexels-photo-681391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
        )
      ],
    );
  }
}
