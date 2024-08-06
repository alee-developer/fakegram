import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/int_extensions.dart';
import 'package:fakegram/views/utils/extensions/text_style_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';

class ImagePostScreen extends StatelessWidget {
  final String imageUrl;
  const ImagePostScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        _profileView(),
        Image.network(
          imageUrl,
          height: context.fullHeight/1.5,
        ),
        _bottomView()
      ],
    );
  }

  Widget _profileView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const CircleAvatar(
              child: Icon(Icons.person_outline),
            ),
            10.width,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "User Name",
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                ),
                Text(
                  "User Name",
                  style: const TextStyle().blackTextStyle,
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Follow")),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
          ],
        )
      ],
    ).paddingSymmetric(horizontal: 10);
  }

  Widget _bottomView() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined)),
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.save))
      ],
    );
  }
}
