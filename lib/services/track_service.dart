import 'package:clone_spotify/models/track_model.dart';

class TrackService {
  final List<TrackModel> _listMock = List.generate(
    100,
    (index) => TrackModel(
        id: index.toString(),
        urlImage: 'https://loremflickr.com/360/360/$index',
        title: 'Track $index',
        type: TrackTypes.values[index % 4]),
  );

  Future<List<TrackModel>> getTrackList() async {
    return await Future.delayed(const Duration(seconds: 1))
        .then((value) => _listMock);
  }
}
