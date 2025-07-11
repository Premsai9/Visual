import '../database.dart';

class RecordingWithUserTable extends SupabaseTable<RecordingWithUserRow> {
  @override
  String get tableName => 'recording_with_user';

  @override
  RecordingWithUserRow createRow(Map<String, dynamic> data) =>
      RecordingWithUserRow(data);
}

class RecordingWithUserRow extends SupabaseDataRow {
  RecordingWithUserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordingWithUserTable();

  String? get recordingId => getField<String>('recording_id');
  set recordingId(String? value) => setField<String>('recording_id', value);

  String? get trackId => getField<String>('track_id');
  set trackId(String? value) => setField<String>('track_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  int? get likesCount => getField<int>('likes_count');
  set likesCount(int? value) => setField<int>('likes_count', value);

  int? get dislikesCount => getField<int>('dislikes_count');
  set dislikesCount(int? value) => setField<int>('dislikes_count', value);

  bool? get isPublic => getField<bool>('is_public');
  set isPublic(bool? value) => setField<bool>('is_public', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);
}
