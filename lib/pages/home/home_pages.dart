import 'package:clone_instagram/pages/home/widgets/post_widget.dart';
import 'package:flutter/material.dart';

import 'widgets/responsive_app_bar.dart';
import 'widgets/stories_list.dart';
import 'widgets/tight_panel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 52), child: ResponsiveAppBar()),
      backgroundColor: Colors.black87,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            child: Row(children: [
              Expanded(
                child: ListView(
                  children: const [
                    StoriesList(),
                    PostWidget(),
                    PostWidget(),
                    PostWidget()
                  ],
                ),
              ),
              const RightPanel()
            ])),
      ),
    );
  }
}
