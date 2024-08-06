import 'package:fakegram/views/screens/home/widgets/home_widgets.dart';
import 'package:fakegram/views/screens/home/widgets/image_post_screen.dart';
import 'package:fakegram/views/screens/home/widgets/video_post_screen.dart';
import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var view = HomeWidgets(context: context);
    return Scaffold(
      appBar: view.appBarView(),
      body: Column(
        children: [
          const Divider(
            thickness: 1,
          ),
          SizedBox(
            height: 130,
            width: context.fullWidth,
            child: view.storyListView(),
          ),
          const Divider(
            thickness: 1,
          ),
          _postView().expanded()
        ],
      ),
    );
  }

  Widget _postView() {
    return ListView.builder(
        itemCount: data.length,
        shrinkWrap: true,
        itemBuilder: (_, index) {
          if (data[index]['type'] == "video") {
            return VideoPostScreen(videoUrl: data[index]['url'].toString());
          } else {
            return ImagePostScreen(imageUrl: data[index]['url'].toString());
          }
          // return const ImagePostScreen();
        });
  }

  var data = [
    {
      "type": "video",
      "url":
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"
    },
    {
      "type": "image",
      "url":
          "https://cdn.pixabay.com/photo/2023/11/09/19/36/zoo-8378189_1280.jpg"
    },
    {
      "type": "video",
      "url":
          "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"
    },
    {
      "type": "image",
      "url":
          "https://cdn.pixabay.com/photo/2023/11/09/19/36/zoo-8378189_1280.jpg"
    }
  ];
}
