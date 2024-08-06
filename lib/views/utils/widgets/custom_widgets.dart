import 'package:flutter/material.dart';

class CustomWidgets {
  Widget storyItemView({String? imageUrl, Widget? bottomView}) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 3),
          ),
          child: ClipOval(
            child: imageUrl != null
                ? Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                  )
                : const Icon(
                    Icons.person_outline,
                    size: 45,
                  ),
          ),
        ),
        // Icon at the bottom
        Positioned(
          bottom: 0,
          child: bottomView ??
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 30,
                ),
              ),
        ),
      ],
    );
  }
}

class CircularImageWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        // Circular shape with border
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 4),
          ),
          child: ClipOval(
            child: Image.network(
              'https://via.placeholder.com/150',
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Icon at the bottom
        Positioned(
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.star,
              color: Colors.blue,
              size: 30,
            ),
          ),
        ),
      ],
    );
  }
}
