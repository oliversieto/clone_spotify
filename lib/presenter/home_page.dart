import 'package:clone_spotify/presenter/widgets/card_track_widget.dart';
import 'package:clone_spotify/services/track_service.dart';
import 'package:clone_spotify/states/track_states.dart';
import 'package:clone_spotify/stores/track_store.dart';
import 'package:flutter/material.dart';

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
      body: ListView(
        children: [
          SizedBox(
            height: 300,
            child: ValueListenableBuilder(
              valueListenable: _store,
              builder: (context, value, _) {
                if (value is TrackStateError) {
                  return Center(
                    child: Text(value.errorMessage),
                  );
                }
                if (value is TrackStateSuccess) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: value.trackList.length,
                    itemBuilder: (context, index) =>
                        CardTrackWidget(track: value.trackList[index]),
                  );
                }
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
