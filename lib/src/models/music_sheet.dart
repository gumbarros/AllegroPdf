import 'package:allegro_pdf/src/models/music_sheet_tag.dart';

class MusicSheet {
  final int? id;
  final String title;
  final List<MusicSheetTag> tags;
  final String filePath;

  MusicSheet({
    this.id,
    required this.title,
    required this.tags,
    required this.filePath,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'title': title, 'filePath': filePath};
  }

  factory MusicSheet.fromMap(Map<String, dynamic> map) {
    return MusicSheet(
      id: map['id'],
      title: map['title'],
      filePath: map['filePath'],
      tags: (map['tags'] as List<Map<String, dynamic>>)
          .map((tagMap) => MusicSheetTag.fromMap(tagMap))
          .toList(),
    );
  }
}
