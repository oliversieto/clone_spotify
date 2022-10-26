import 'package:flutter/material.dart';

import '../../models/track_model.dart';

class TopTracksWidget extends StatelessWidget {
  const TopTracksWidget({
    Key? key,
    required this.track,
  }) : super(key: key);
  final TrackModel track;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0XFF222222),
        ),
        height: 112,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              track.urlImage,
              fit: BoxFit.contain,
              width: 112,
              height: 112,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(track.title),
          ],
        ),
      ),
    );
  }
}
