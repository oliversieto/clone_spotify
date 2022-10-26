import 'package:clone_spotify/services/track_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Deve retornar uma lista de tracks', () async {
    TrackService service = TrackService();
    final list = await service.getTrackList();
    debugPrint(list.toString());
  });
}
