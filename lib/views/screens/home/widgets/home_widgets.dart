import 'package:fakegram/views/utils/constants/image_path.dart';
import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/text_style_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:fakegram/views/utils/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeWidgets {
  BuildContext context;

  HomeWidgets({required this.context});

  PreferredSize appBarView() {
    return PreferredSize(
      preferredSize: Size(context.fullWidth, 40),
      child: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Image.asset(
          fakegrameLogoPath,
          height: 30,
        ),
        actions: [
          Image.asset(
            favoriteIcon,
            height: 30,
            width: 30,
          ).paddingAll(5),
          Image.asset(
            messengerIcon,
            height: 30,
            width: 30,
          ).paddingAll(5),
        ],
      ),
    );
  }

  Widget storyListView() {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index) {
        return Column(
          children: [
            CustomWidgets().storyItemView(bottomView: _liveView()),
            const SizedBox(height: 10,),
            Text("Name",style: const TextStyle().blackTextStyle,)
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(width: 5,);
      },
    );
  }

  Widget _liveView() {
    return Card(
      color: Colors.green,
      child: const Text("Live").paddingAll(5),
    );
  }
}
