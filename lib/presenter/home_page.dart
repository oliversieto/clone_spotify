import 'package:clone_spotify/presenter/widgets/app_bar_widget.dart';
import 'package:clone_spotify/presenter/widgets/bottom_bar_widget.dart';
import 'package:clone_spotify/presenter/widgets/list_top_tracks_widget.dart';
import 'package:clone_spotify/services/track_service.dart';
import 'package:clone_spotify/states/track_states.dart';
import 'package:clone_spotify/stores/track_store.dart';
import 'package:flutter/material.dart';

import 'widgets/track_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _store = TrackStore(TrackService());

  @override
  void initState() {
    super.initState();
    _store.getTracks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const AppBarWidget(),
      body: ValueListenableBuilder(
        valueListenable: _store,
        builder: (context, value, _) {
          if (value is TrackStateError) {
            return Center(
              child: Text(value.errorMessage),
            );
          }
          if (value is TrackStateSuccess) {
            return ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                ListTopTracksWidget(
                  listTrack: value.trackList,
                ),
                const SizedBox(
                  height: 20,
                ),
                TrackListWidget(
                  title: 'Jump back in',
                  trackList: value.trackList,
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: const BottomBarWidget(),
    );
  }
}
