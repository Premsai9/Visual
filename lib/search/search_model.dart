import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  Local state fields for this page.

  bool isselected = true;

  List<TrackUsersStruct> searchstate = [];
  void addToSearchstate(TrackUsersStruct item) => searchstate.add(item);
  void removeFromSearchstate(TrackUsersStruct item) => searchstate.remove(item);
  void removeAtIndexFromSearchstate(int index) => searchstate.removeAt(index);
  void insertAtIndexInSearchstate(int index, TrackUsersStruct item) =>
      searchstate.insert(index, item);
  void updateSearchstateAtIndex(
          int index, Function(TrackUsersStruct) updateFn) =>
      searchstate[index] = updateFn(searchstate[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (trackssearch)] action in TextField widget.
  ApiCallResponse? apiResultthf;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
