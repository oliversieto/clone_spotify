import 'package:clone_spotify/services/track_service.dart';
import 'package:clone_spotify/states/track_states.dart';
import 'package:flutter/material.dart';

class TrackStore extends ValueNotifier<TrackState> {
  final TrackService _trackService;

  TrackStore(this._trackService) : super(TrackStateIdle());

  Future<void> getTracks() async {
    try {
      value = TrackStateLoading();
      final list = await _trackService.getTrackList();
      value = TrackStateSuccess(list);
    } catch (error) {
      value = TrackStateError(error.toString());
    }
  }
}
