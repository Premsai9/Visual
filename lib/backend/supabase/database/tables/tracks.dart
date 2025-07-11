import '../database.dart';

class TracksTable extends SupabaseTable<TracksRow> {
  @override
  String get tableName => 'tracks';

  @override
  TracksRow createRow(Map<String, dynamic> data) => TracksRow(data);
}

class TracksRow extends SupabaseDataRow {
  TracksRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TracksTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get categoryId => getField<String>('category_id');
  set categoryId(String? value) => setField<String>('category_id', value);

  String get creatorId => getField<String>('creator_id')!;
  set creatorId(String value) => setField<String>('creator_id', value);

  String get trackType => getField<String>('track_type')!;
  set trackType(String value) => setField<String>('track_type', value);

  String get title => getField<String>('title')!;
  set title(String value) => setField<String>('title', value);

  String get scriptText => getField<String>('script_text')!;
  set scriptText(String value) => setField<String>('script_text', value);

  bool get isPublic => getField<bool>('is_public')!;
  set isPublic(bool value) => setField<bool>('is_public', value);

  String get createdWith => getField<String>('created_with')!;
  set createdWith(String value) => setField<String>('created_with', value);

  String? get imageUrl => getField<String>('image_url');
  set imageUrl(String? value) => setField<String>('image_url', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get fileUrl => getField<String>('file_url');
  set fileUrl(String? value) => setField<String>('file_url', value);

  List<String> get categoryName => getListField<String>('category_name');
  set categoryName(List<String>? value) =>
      setListField<String>('category_name', value);

  String? get language => getField<String>('language');
  set language(String? value) => setField<String>('language', value);

  String? get aiVoiceurl => getField<String>('ai_voiceurl');
  set aiVoiceurl(String? value) => setField<String>('ai_voiceurl', value);

  int? get likeCount => getField<int>('like_count');
  set likeCount(int? value) => setField<int>('like_count', value);

  int? get dislikeCount => getField<int>('dislike_count');
  set dislikeCount(int? value) => setField<int>('dislike_count', value);

  String? get videoUrl => getField<String>('video_url');
  set videoUrl(String? value) => setField<String>('video_url', value);

  String get visibility => getField<String>('visibility')!;
  set visibility(String value) => setField<String>('visibility', value);

  String? get privateGroupId => getField<String>('private_group_id');
  set privateGroupId(String? value) =>
      setField<String>('private_group_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get averageRating => getField<double>('average_rating');
  set averageRating(double? value) => setField<double>('average_rating', value);
}
