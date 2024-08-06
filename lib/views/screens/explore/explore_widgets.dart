import 'package:fakegram/views/utils/builders/cached_image_builder.dart';
import 'package:fakegram/views/utils/extensions/context_extensions.dart';
import 'package:fakegram/views/utils/extensions/widget_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ExploreWidgets {
  BuildContext context;

  ExploreWidgets({required this.context});

  PreferredSize searchView({void Function(String)? onChanged}) {
    return PreferredSize(
        preferredSize: Size(context.fullWidth, 50),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: TextFormField(
            onChanged: onChanged,
            decoration: const InputDecoration(
                fillColor: Colors.grey,
                filled: true,
                hintText: "Search...",
                prefixIcon: Icon(Icons.search_outlined)),
          ).paddingSymmetric(horizontal: 5),
        ));
  }

  Widget filterView() {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (_, index) {
          return filterItemView("Style");
        });
  }

  Widget filterItemView(String title) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(width: 1)),
      child: Text(
        title,
        style: const TextStyle(fontSize: 14),
      ).paddingAll(10),
    );
  }

  Widget feedView() {
    final List<String> imageUrls = [
      "https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg",
      "https://images.pexels.com/photos/34950/pexels-photo.jpg",
      "https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg",
      "https://images.pexels.com/photos/158607/cairn-fog-mystical-background-158607.jpeg",
      "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg",
      "https://images.pexels.com/photos/110874/pexels-photo-110874.jpeg",
      "https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg",
      "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg",
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg",
      "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg",
      "https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg",
      "https://images.pexels.com/photos/34950/pexels-photo.jpg",
      "https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg",
      "https://images.pexels.com/photos/158607/cairn-fog-mystical-background-158607.jpeg",
      "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg",
      "https://images.pexels.com/photos/110874/pexels-photo-110874.jpeg",
      "https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg",
      "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg",
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg",
      "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg",
      "https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg",
      "https://images.pexels.com/photos/34950/pexels-photo.jpg",
      "https://images.pexels.com/photos/167699/pexels-photo-167699.jpeg",
      "https://images.pexels.com/photos/158607/cairn-fog-mystical-background-158607.jpeg",
      "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg",
      "https://images.pexels.com/photos/110874/pexels-photo-110874.jpeg",
      "https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg",
      "https://images.pexels.com/photos/1563356/pexels-photo-1563356.jpeg",
      "https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg",
      "https://images.pexels.com/photos/3225517/pexels-photo-3225517.jpeg",
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MasonryGridView.count(
        shrinkWrap: true,
        crossAxisCount: 3,
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) =>
            CachedImageBuilder().imageView(imageUrls[index]),
        // staggeredTileBuilder: (int index) => StaggeredTile.fit(2),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
    );
  }
}
