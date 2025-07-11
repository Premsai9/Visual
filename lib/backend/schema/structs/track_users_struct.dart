// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackUsersStruct extends BaseStruct {
  TrackUsersStruct({
    String? title,
    String? language,
    bool? isPublic,
    int? likeCount,
    String? userName,
    String? trackId,
    String? imageUrl,
    String? userId,
    String? userImage,
  })  : _title = title,
        _language = language,
        _isPublic = isPublic,
        _likeCount = likeCount,
        _userName = userName,
        _trackId = trackId,
        _imageUrl = imageUrl,
        _userId = userId,
        _userImage = userImage;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "language" field.
  String? _language;
  String get language => _language ?? '';
  set language(String? val) => _language = val;

  bool hasLanguage() => _language != null;

  // "is_public" field.
  bool? _isPublic;
  bool get isPublic => _isPublic ?? false;
  set isPublic(bool? val) => _isPublic = val;

  bool hasIsPublic() => _isPublic != null;

  // "like_count" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "track_id" field.
  String? _trackId;
  String get trackId => _trackId ?? '';
  set trackId(String? val) => _trackId = val;

  bool hasTrackId() => _trackId != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  set userId(String? val) => _userId = val;

  bool hasUserId() => _userId != null;

  // "user_image" field.
  String? _userImage;
  String get userImage => _userImage ?? '';
  set userImage(String? val) => _userImage = val;

  bool hasUserImage() => _userImage != null;

  static TrackUsersStruct fromMap(Map<String, dynamic> data) =>
      TrackUsersStruct(
        title: data['title'] as String?,
        language: data['language'] as String?,
        isPublic: data['is_public'] as bool?,
        likeCount: castToType<int>(data['like_count']),
        userName: data['user_name'] as String?,
        trackId: data['track_id'] as String?,
        imageUrl: data['image_url'] as String?,
        userId: data['user_id'] as String?,
        userImage: data['user_image'] as String?,
      );

  static TrackUsersStruct? maybeFromMap(dynamic data) => data is Map
      ? TrackUsersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'language': _language,
        'is_public': _isPublic,
        'like_count': _likeCount,
        'user_name': _userName,
        'track_id': _trackId,
        'image_url': _imageUrl,
        'user_id': _userId,
        'user_image': _userImage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'language': serializeParam(
          _language,
          ParamType.String,
        ),
        'is_public': serializeParam(
          _isPublic,
          ParamType.bool,
        ),
        'like_count': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'user_name': serializeParam(
          _userName,
          ParamType.String,
        ),
        'track_id': serializeParam(
          _trackId,
          ParamType.String,
        ),
        'image_url': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
        'user_id': serializeParam(
          _userId,
          ParamType.String,
        ),
        'user_image': serializeParam(
          _userImage,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrackUsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrackUsersStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        language: deserializeParam(
          data['language'],
          ParamType.String,
          false,
        ),
        isPublic: deserializeParam(
          data['is_public'],
          ParamType.bool,
          false,
        ),
        likeCount: deserializeParam(
          data['like_count'],
          ParamType.int,
          false,
        ),
        userName: deserializeParam(
          data['user_name'],
          ParamType.String,
          false,
        ),
        trackId: deserializeParam(
          data['track_id'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['image_url'],
          ParamType.String,
          false,
        ),
        userId: deserializeParam(
          data['user_id'],
          ParamType.String,
          false,
        ),
        userImage: deserializeParam(
          data['user_image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrackUsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrackUsersStruct &&
        title == other.title &&
        language == other.language &&
        isPublic == other.isPublic &&
        likeCount == other.likeCount &&
        userName == other.userName &&
        trackId == other.trackId &&
        imageUrl == other.imageUrl &&
        userId == other.userId &&
        userImage == other.userImage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        title,
        language,
        isPublic,
        likeCount,
        userName,
        trackId,
        imageUrl,
        userId,
        userImage
      ]);
}

TrackUsersStruct createTrackUsersStruct({
  String? title,
  String? language,
  bool? isPublic,
  int? likeCount,
  String? userName,
  String? trackId,
  String? imageUrl,
  String? userId,
  String? userImage,
}) =>
    TrackUsersStruct(
      title: title,
      language: language,
      isPublic: isPublic,
      likeCount: likeCount,
      userName: userName,
      trackId: trackId,
      imageUrl: imageUrl,
      userId: userId,
      userImage: userImage,
    );
