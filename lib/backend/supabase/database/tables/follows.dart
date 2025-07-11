import '../database.dart';

class FollowsTable extends SupabaseTable<FollowsRow> {
  @override
  String get tableName => 'follows';

  @override
  FollowsRow createRow(Map<String, dynamic> data) => FollowsRow(data);
}

class FollowsRow extends SupabaseDataRow {
  FollowsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FollowsTable();

  String get followerId => getField<String>('follower_id')!;
  set followerId(String value) => setField<String>('follower_id', value);

  String get followeeId => getField<String>('followee_id')!;
  set followeeId(String value) => setField<String>('followee_id', value);
}
