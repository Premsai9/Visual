import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import 'package:shared_preferences/shared_preferences.dart';
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

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<TaskStruct> _tasks = [
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Research & Strategy\",\"description\":\"Define supported languages and locales\",\"date\":\"1749731880000\",\"status\":\"assigned\",\"tags\":\"[\\\"Research\\\"]\"}')),
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"UI/UX Design\",\"description\":\"Language selector in the UI\",\"date\":\"1750163940000\",\"status\":\"assigned\",\"tags\":\"[\\\"Design\\\"]\"}')),
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"QA Testing\",\"description\":\"Verify language display and accuracy\",\"date\":\"1750336800000\",\"status\":\"created\",\"tags\":\"[\\\"Testing\\\"]\"}')),
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Frontend Implementation\",\"description\":\"Build logic for language switching\",\"date\":\"1750682400000\",\"status\":\"assigned\",\"tags\":\"[\\\"Front-End\\\",\\\"Develoment\\\"]\"}')),
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Backend Configuration\",\"description\":\"Store and fetch user language preferences\",\"date\":\"1749732000000\",\"status\":\"completed\",\"tags\":\"[\\\"Back-End\\\",\\\"Development\\\"]\"}')),
    TaskStruct.fromSerializableMap(jsonDecode(
        '{\"title\":\"Product Localization\",\"description\":\"Translate platform for target markets\",\"date\":\"1750423260000\",\"status\":\"created\",\"tags\":\"[\\\"Develoment\\\"]\"}'))
  ];
  List<TaskStruct> get tasks => _tasks;
  set tasks(List<TaskStruct> value) {
    _tasks = value;
  }

  void addToTasks(TaskStruct value) {
    tasks.add(value);
  }

  void removeFromTasks(TaskStruct value) {
    tasks.remove(value);
  }

  void removeAtIndexFromTasks(int index) {
    tasks.removeAt(index);
  }

  void updateTasksAtIndex(
    int index,
    TaskStruct Function(TaskStruct) updateFn,
  ) {
    tasks[index] = updateFn(_tasks[index]);
  }

  void insertAtIndexInTasks(int index, TaskStruct value) {
    tasks.insert(index, value);
  }
}
