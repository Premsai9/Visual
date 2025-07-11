import '../database.dart';

class FollowWithUserInfoTable extends SupabaseTable<FollowWithUserInfoRow> {
  @override
  String get tableName => 'follow_with_user_info';

  @override
  FollowWithUserInfoRow createRow(Map<String, dynamic> data) =>
      FollowWithUserInfoRow(data);
}

class FollowWithUserInfoRow extends SupabaseDataRow {
  FollowWithUserInfoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FollowWithUserInfoTable();

  String? get followerId => getField<String>('follower_id');
  set followerId(String? value) => setField<String>('follower_id', value);

  String? get followerName => getField<String>('follower_name');
  set followerName(String? value) => setField<String>('follower_name', value);

  String? get followerEmail => getField<String>('follower_email');
  set followerEmail(String? value) => setField<String>('follower_email', value);

  String? get followerAvatar => getField<String>('follower_avatar');
  set followerAvatar(String? value) =>
      setField<String>('follower_avatar', value);

  String? get followeeId => getField<String>('followee_id');
  set followeeId(String? value) => setField<String>('followee_id', value);

  String? get followeeName => getField<String>('followee_name');
  set followeeName(String? value) => setField<String>('followee_name', value);

  String? get followeeEmail => getField<String>('followee_email');
  set followeeEmail(String? value) => setField<String>('followee_email', value);

  String? get followeeAvatar => getField<String>('followee_avatar');
  set followeeAvatar(String? value) =>
      setField<String>('followee_avatar', value);
}
