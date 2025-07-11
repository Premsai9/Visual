import '../database.dart';

class RecordingFeedbackTable extends SupabaseTable<RecordingFeedbackRow> {
  @override
  String get tableName => 'recording_feedback';

  @override
  RecordingFeedbackRow createRow(Map<String, dynamic> data) =>
      RecordingFeedbackRow(data);
}

class RecordingFeedbackRow extends SupabaseDataRow {
  RecordingFeedbackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RecordingFeedbackTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get recordingId => getField<String>('recording_id')!;
  set recordingId(String value) => setField<String>('recording_id', value);

  bool? get liked => getField<bool>('liked');
  set liked(bool? value) => setField<bool>('liked', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
