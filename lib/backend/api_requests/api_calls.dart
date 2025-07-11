import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:ff_commons/api_requests/api_manager.dart';


export 'package:ff_commons/api_requests/api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class TrackssearchCall {
  static Future<ApiCallResponse> call({
    String? searchstring = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'trackssearch',
      apiUrl:
          'https://inkmlvsvizmwapetkuqz.supabase.co/rest/v1/track_with_users?select=title,language,is_public,like_count,user_name,track_id,image_url,user_id,user_image&or=(title.ilike.*${searchstring}*,language.ilike.*${searchstring}*,user_name.ilike.*${searchstring}*)',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlua21sdnN2aXptd2FwZXRrdXF6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY3NzIyOTYsImV4cCI6MjA2MjM0ODI5Nn0.oJ23Jr-_cX0UXTRUzjXJWCrbSifal2QNAp0f4c8YWKE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlua21sdnN2aXptd2FwZXRrdXF6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY3NzIyOTYsImV4cCI6MjA2MjM0ODI5Nn0.oJ23Jr-_cX0UXTRUzjXJWCrbSifal2QNAp0f4c8YWKE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TrackssearchInsideTracklistCall {
  static Future<ApiCallResponse> call({
    String? searchstring = '',
    String? categoryName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'trackssearch inside tracklist',
      apiUrl:
          'https://inkmlvsvizmwapetkuqz.supabase.co/rest/v1/track_with_users?select=title,language,user_name,track_id,image_url&and=(category_name.cs.{\"${categoryName}\"},or(title.ilike.*${searchstring}*,language.ilike.*${searchstring}*,user_name.ilike.*${searchstring}*))',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlua21sdnN2aXptd2FwZXRrdXF6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY3NzIyOTYsImV4cCI6MjA2MjM0ODI5Nn0.oJ23Jr-_cX0UXTRUzjXJWCrbSifal2QNAp0f4c8YWKE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imlua21sdnN2aXptd2FwZXRrdXF6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY3NzIyOTYsImV4cCI6MjA2MjM0ODI5Nn0.oJ23Jr-_cX0UXTRUzjXJWCrbSifal2QNAp0f4c8YWKE',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
