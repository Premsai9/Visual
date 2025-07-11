import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'package:ff_commons/api_requests/api_manager.dart';
import 'backend/supabase/supabase.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _Test = await secureStorage.getStringList('ff_Test') ?? _Test;
    });
    await _safeInitAsync(() async {
      _recordingselected =
          await secureStorage.getBool('ff_recordingselected') ??
              _recordingselected;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _Test = ['Prem Sai'];
  List<String> get Test => _Test;
  set Test(List<String> value) {
    _Test = value;
    secureStorage.setStringList('ff_Test', value);
  }

  void deleteTest() {
    secureStorage.delete(key: 'ff_Test');
  }

  void addToTest(String value) {
    Test.add(value);
    secureStorage.setStringList('ff_Test', _Test);
  }

  void removeFromTest(String value) {
    Test.remove(value);
    secureStorage.setStringList('ff_Test', _Test);
  }

  void removeAtIndexFromTest(int index) {
    Test.removeAt(index);
    secureStorage.setStringList('ff_Test', _Test);
  }

  void updateTestAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    Test[index] = updateFn(_Test[index]);
    secureStorage.setStringList('ff_Test', _Test);
  }

  void insertAtIndexInTest(int index, String value) {
    Test.insert(index, value);
    secureStorage.setStringList('ff_Test', _Test);
  }

  int _Padding = 10;
  int get Padding => _Padding;
  set Padding(int value) {
    _Padding = value;
  }

  bool _recordingselected = true;
  bool get recordingselected => _recordingselected;
  set recordingselected(bool value) {
    _recordingselected = value;
    secureStorage.setBool('ff_recordingselected', value);
  }

  void deleteRecordingselected() {
    secureStorage.delete(key: 'ff_recordingselected');
  }

  Color _randomcolor = Color(4283215764);
  Color get randomcolor => _randomcolor;
  set randomcolor(Color value) {
    _randomcolor = value;
  }

  Color _iphonecolor = Color(4280032286);
  Color get iphonecolor => _iphonecolor;
  set iphonecolor(Color value) {
    _iphonecolor = value;
  }

  final _tracklistManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> tracklist({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _tracklistManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearTracklistCache() => _tracklistManager.clear();
  void clearTracklistCacheKey(String? uniqueKey) =>
      _tracklistManager.clearRequest(uniqueKey);

  final _recordingsManager = FutureRequestManager<List<RecordingWithUserRow>>();
  Future<List<RecordingWithUserRow>> recordings({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<RecordingWithUserRow>> Function() requestFn,
  }) =>
      _recordingsManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearRecordingsCache() => _recordingsManager.clear();
  void clearRecordingsCacheKey(String? uniqueKey) =>
      _recordingsManager.clearRequest(uniqueKey);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
