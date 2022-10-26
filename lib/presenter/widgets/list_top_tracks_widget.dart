import 'package:clone_spotify/presenter/widgets/top_tracks_widget.dart';
import 'package:flutter/material.dart';

import '../../models/track_model.dart';

class ListTopTracksWidget extends StatelessWidget {
  final List<TrackModel> listTrack;
  const ListTopTracksWidget({
    Key? key,
    required this.listTrack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 336,
      child: GridView.count(
        childAspectRatio: (MediaQuery.of(context).size.width / 224),
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        crossAxisCount: 2,
        children: listTrack
            .getRange(0, 6)
            .map((e) => TopTracksWidget(track: e))
            .toList(),
      ),
    );
  }
}
