import 'package:clone_spotify/models/track_model.dart';
import 'package:flutter/material.dart';

class CardTrackWidget extends StatelessWidget {
  const CardTrackWidget({Key? key, required this.track}) : super(key: key);

  final TrackModel track;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200,
        height: 250,
        child: Column(
          crossAxisAlignment: track.isArtist
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: _getBorderRadius(),
                child: Ink(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(track.urlImage),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(track.title),
            Text(
              track.type.name,
              style: TextStyle(fontSize: 11.0, color: Colors.grey[400]),
            ),
          ],
        ),
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
