import '../database.dart';

class TrackPermissionsTable extends SupabaseTable<TrackPermissionsRow> {
  @override
  String get tableName => 'track_permissions';

  @override
  TrackPermissionsRow createRow(Map<String, dynamic> data) =>
      TrackPermissionsRow(data);
}

class TrackPermissionsRow extends SupabaseDataRow {
  TrackPermissionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrackPermissionsTable();

  String get trackId => getField<String>('track_id')!;
  set trackId(String value) => setField<String>('track_id', value);

  String get userId => getField<String>('user_id')!;
  set userId(String value) => setField<String>('user_id', value);
}
