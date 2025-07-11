import '../database.dart';

class TrackWithUsersTable extends SupabaseTable<TrackWithUsersRow> {
  @override
  String get tableName => 'track_with_users';

  @override
  TrackWithUsersRow createRow(Map<String, dynamic> data) =>
      TrackWithUsersRow(data);
}

class TrackWithUsersRow extends SupabaseDataRow {
  TrackWithUsersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TrackWithUsersTable();

  String? get trackId => getField<String>('track_id');
  set trackId(String? value) => setField<String>('track_id', value);

  String? get title => getField<String>('title');
  set title(String? value) => setField<String>('title', value);

  String? get scriptText => getField<String>('script_text');
  set scriptText(String? value) => setField<String>('script_text', value);

  bool? get isPublic => getField<bool>('is_public');
  set isPublic(bool? value) => setField<bool>('is_public', value);

  String? get createdWith => getField<String>('created_with');
  set createdWith(String? value) => setField<String>('created_with', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  DateTime? get trackCreatedAt => getField<DateTime>('track_created_at');
  set trackCreatedAt(DateTime? value) =>
      setField<DateTime>('track_created_at', value);

  int? get likeCount => getField<int>('like_count');
  set likeCount(int? value) => setField<int>('like_count', value);

  int? get dislikeCount => getField<int>('dislike_count');
  set dislikeCount(int? value) => setField<int>('dislike_count', value);

  List<String> get categoryName => getListField<String>('category_name');
  set categoryName(List<String>? value) =>
      setListField<String>('category_name', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get userName => getField<String>('user_name');
  set userName(String? value) => setField<String>('user_name', value);

  String? get userEmail => getField<String>('user_email');
  set userEmail(String? value) => setField<String>('user_email', value);

  DateTime? get userCreatedAt => getField<DateTime>('user_created_at');
  set userCreatedAt(DateTime? value) =>
      setField<DateTime>('user_created_at', value);

  String? get userImage => getField<String>('user_image');
  set userImage(String? value) => setField<String>('user_image', value);
}
