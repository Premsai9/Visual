// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskStruct extends BaseStruct {
  TaskStruct({
    String? title,
    String? description,
    DateTime? date,
    TaskStatus? status,
    List<String>? tags,
  })  : _title = title,
        _description = description,
        _date = date,
        _status = status,
        _tags = tags;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "status" field.
  TaskStatus? _status;
  TaskStatus? get status => _status;
  set status(TaskStatus? val) => _status = val;

  bool hasStatus() => _status != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;

  void updateTags(Function(List<String>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  static TaskStruct fromMap(Map<String, dynamic> data) => TaskStruct(
        title: data['title'] as String?,
        description: data['description'] as String?,
        date: data['date'] as DateTime?,
        status: data['status'] is TaskStatus
            ? data['status']
            : deserializeEnum<TaskStatus>(data['status']),
        tags: getDataList(data['tags']),
      );

  static TaskStruct? maybeFromMap(dynamic data) =>
      data is Map ? TaskStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'title': _title,
        'description': _description,
        'date': _date,
        'status': _status?.serialize(),
        'tags': _tags,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.Enum,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static TaskStruct fromSerializableMap(Map<String, dynamic> data) =>
      TaskStruct(
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam<TaskStatus>(
          data['status'],
          ParamType.Enum,
          false,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'TaskStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is TaskStruct &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        status == other.status &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([title, description, date, status, tags]);
}

TaskStruct createTaskStruct({
  String? title,
  String? description,
  DateTime? date,
  TaskStatus? status,
}) =>
    TaskStruct(
      title: title,
      description: description,
      date: date,
      status: status,
    );
