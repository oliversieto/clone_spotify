import 'package:clone_spotify/models/track_model.dart';

abstract class TrackState {}

class TrackStateLoading extends TrackState {}

class TrackStateIdle extends TrackState {}

class TrackStateSuccess extends TrackState {
  final List<TrackModel> trackList;

  TrackStateSuccess(this.trackList);
}

class TrackStateError extends TrackState {
  final String errorMessage;

  TrackStateError(this.errorMessage);
}
