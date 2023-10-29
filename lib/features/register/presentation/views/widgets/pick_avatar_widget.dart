import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class PickAvatar extends StatelessWidget {
  const PickAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: CircleAvatar(
            radius: MediaQuery.of(context).size.width * 0.15,
            child: CachedNetworkImage(
              placeholder: (context, url) => CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.15,
                backgroundColor: Colors.grey,
              ),
              imageUrl:
                  'https://cdni.iconscout.com/illustration/premium/thumb/boy-likes-burger-4119371-3418354.png',
            ),
          ),
        ),
        const Positioned(
          left: 190,
          bottom: -1,
          child: Icon(Icons.camera_alt_rounded),
        ),
      ],
    );
  }
}
