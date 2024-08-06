import 'package:fakegram/views/screens/explore/explore_widgets.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var view = ExploreWidgets(context: context);
    return Scaffold(
      body: Column(
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 45,
            child: view.filterView(),
          ),
          view.feedView().expanded()
        ],
      ),
      appBar: view.searchView(),
    );
  }
}
