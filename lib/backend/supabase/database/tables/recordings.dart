import '../database.dart';

class RecordingsTable extends SupabaseTable<RecordingsRow> {
  @override
  String get tableName => 'recordings';

  @override
  RecordingsRow createRow(Map<String, dynamic> data) => RecordingsRow(data);
}

class RecordingsRow extends SupabaseDataRow {
  RecordingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordingsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get trackId => getField<String>('track_id')!;
  set trackId(String value) => setField<String>('track_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  String? get sourceType => getField<String>('source_type');
  set sourceType(String? value) => setField<String>('source_type', value);

  String get isSelected => getField<String>('isSelected')!;
  set isSelected(String value) => setField<String>('isSelected', value);

  bool get isPublic => getField<bool>('is_public')!;
  set isPublic(bool value) => setField<bool>('is_public', value);

  int get likesCount => getField<int>('likes_count')!;
  set likesCount(int value) => setField<int>('likes_count', value);

  int get dislikesCount => getField<int>('dislikes_count')!;
  set dislikesCount(int value) => setField<int>('dislikes_count', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get otherUrl => getField<String>('other_url');
  set otherUrl(String? value) => setField<String>('other_url', value);

  String? get otherUserId => getField<String>('other_user_id');
  set otherUserId(String? value) => setField<String>('other_user_id', value);

  double? get averageRating => getField<double>('average_rating');
  set averageRating(double? value) => setField<double>('average_rating', value);

  String? get otherRecordingId => getField<String>('other_recording_id');
  set otherRecordingId(String? value) =>
      setField<String>('other_recording_id', value);
}
