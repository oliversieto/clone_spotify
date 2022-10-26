enum TrackTypes { song, playlist, album, artist }

class TrackModel {
  final String id;
  final String title;
  final String urlImage;
  final TrackTypes type;

  TrackModel({
    required this.id,
    required this.title,
    required this.urlImage,
    required this.type,
  });

  @override
  String toString() {
    return 'TrackModel(id: $id, title: $title, urlImage: $urlImage, type: $type)';
  }

  bool get isArtist => type == TrackTypes.artist;

  bool get isAlbun => type == TrackTypes.album;

  bool get isSong => type == TrackTypes.song;

  bool get isPlaylist => type == TrackTypes.playlist;
}
