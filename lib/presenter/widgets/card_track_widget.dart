import 'package:clone_spotify/models/track_model.dart';
import 'package:flutter/material.dart';

class CardTrackWidget extends StatelessWidget {
  const CardTrackWidget({Key? key, required this.track}) : super(key: key);

  final TrackModel track;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 250,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: _getBorderRadius(),
            child: Image.network(
              track.urlImage,
              fit: BoxFit.contain,
              width: 200,
              height: 200,
            ),
          ),
          Text(track.title),
          Text(track.type.name),
        ],
      ),
    );
  }

  BorderRadius _getBorderRadius() {
    if (track.isArtist) {
      return BorderRadius.circular(200);
    }
    if (track.isSong) {
      return const BorderRadius.all(Radius.circular(24));
    }
    return const BorderRadius.all(Radius.zero);
  }
}
