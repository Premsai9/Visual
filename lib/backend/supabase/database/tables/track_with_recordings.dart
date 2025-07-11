import '../database.dart';

class TrackWithRecordingsTable extends SupabaseTable<TrackWithRecordingsRow> {
  @override
  String get tableName => 'track_with_recordings';

  @override
  TrackWithRecordingsRow createRow(Map<String, dynamic> data) =>
      TrackWithRecordingsRow(data);
}

class TrackWithRecordingsRow extends SupabaseDataRow {
  TrackWithRecordingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrackWithRecordingsTable();

  String? get trackId => getField<String>('track_id');
  set trackId(String? value) => setField<String>('track_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  DateTime? get trackCreatedAt => getField<DateTime>('track_created_at');
  set trackCreatedAt(DateTime? value) =>
      setField<DateTime>('track_created_at', value);

  String? get defaultAudio => getField<String>('default_audio');
  set defaultAudio(String? value) => setField<String>('default_audio', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get creatorId => getField<String>('creator_id');
  set creatorId(String? value) => setField<String>('creator_id', value);

  String? get creatorName => getField<String>('creator_name');
  set creatorName(String? value) => setField<String>('creator_name', value);

  String? get recordingId => getField<String>('recording_id');
  set recordingId(String? value) => setField<String>('recording_id', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  DateTime? get recordingCreatedAt =>
      getField<DateTime>('recording_created_at');
  set recordingCreatedAt(DateTime? value) =>
      setField<DateTime>('recording_created_at', value);

  String? get recordedBy => getField<String>('recorded_by');
  set recordedBy(String? value) => setField<String>('recorded_by', value);

  String? get isSelected => getField<String>('isSelected');
  set isSelected(String? value) => setField<String>('isSelected', value);

  String? get otherUrl => getField<String>('other_url');
  set otherUrl(String? value) => setField<String>('other_url', value);

  String? get otherUserId => getField<String>('other_user_id');
  set otherUserId(String? value) => setField<String>('other_user_id', value);

  String? get recordedByName => getField<String>('recorded_by_name');
  set recordedByName(String? value) =>
      setField<String>('recorded_by_name', value);
}
