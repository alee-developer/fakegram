import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/int_extensions.dart';
import 'package:fakegram/views/utils/extensions/text_style_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPostScreen extends StatefulWidget {
  final String videoUrl;

  const VideoPostScreen({super.key, required this.videoUrl});

  @override
  State<VideoPostScreen> createState() => _VideoPostScreenState();
}

class _VideoPostScreenState extends State<VideoPostScreen> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl))
      ..initialize().then((_) {
        setState(() {});
        // _controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return mainView();
  }

  bool isVolumeOn = false;

  Widget mainView() {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        SizedBox(
          height: context.fullHeight / 1.4,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _videoView(),
              Positioned(
                  bottom: 10,
                  right: 10,
                  child: IconButton(
                    onPressed: () {
                      if (isVolumeOn) {
                        _controller.setVolume(0.0);
                      } else {
                        _controller.setVolume(1.0);
                      }
                      isVolumeOn = !isVolumeOn;
                      setState(() {

                      });
                    },
                    icon: Icon(isVolumeOn
                        ? Icons.volume_up_outlined
                        : Icons.volume_off_rounded),
                  )),
              Positioned(top: 0, right: 0, left: 0, child: _profileView()),
            ],
          ),
        ),
        _bottomView()
      ],
    );
  }

  Widget _videoView() {
    return InkWell(
      onTap: () {
        _controller.value.isPlaying ? _controller.pause() : _controller.play();
      },
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : const CircularProgressIndicator(),
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
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.comment)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.send_outlined)),
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.save))
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
