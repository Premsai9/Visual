import '../database.dart';

class TrackFeedbackTable extends SupabaseTable<TrackFeedbackRow> {
  @override
  String get tableName => 'track_feedback';

  @override
  TrackFeedbackRow createRow(Map<String, dynamic> data) =>
      TrackFeedbackRow(data);
}

class TrackFeedbackRow extends SupabaseDataRow {
  TrackFeedbackRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrackFeedbackTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);

  String get trackId => getField<String>('track_id')!;
  set trackId(String value) => setField<String>('track_id', value);

  bool? get liked => getField<bool>('liked');
  set liked(bool? value) => setField<bool>('liked', value);

  int? get rating => getField<int>('rating');
  set rating(int? value) => setField<int>('rating', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime get updatedAt => getField<DateTime>('updated_at')!;
  set updatedAt(DateTime value) => setField<DateTime>('updated_at', value);
}
