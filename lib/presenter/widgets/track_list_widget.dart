import 'package:flutter/material.dart';

import '../../models/track_model.dart';
import 'card_track_widget.dart';

class TrackListWidget extends StatelessWidget {
  const TrackListWidget({
    Key? key,
    required this.title,
    required this.trackList,
  }) : super(key: key);

  final String title;
  final List<TrackModel> trackList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: trackList.length,
            itemBuilder: (context, index) =>
                CardTrackWidget(track: trackList[index]),
          ),
        ),
      ],
    );
  }
}
