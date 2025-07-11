import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dart:async';
import 'tracklistnew_widget.dart' show TracklistnewWidget;
import 'package:flutter/material.dart';

class TracklistnewModel extends FlutterFlowModel<TracklistnewWidget> {
  ///  Local state fields for this page.

  List<TrackWithUsersRow> all = [];
  void addToAll(TrackWithUsersRow item) => all.add(item);
  void removeFromAll(TrackWithUsersRow item) => all.remove(item);
  void removeAtIndexFromAll(int index) => all.removeAt(index);
  void insertAtIndexInAll(int index, TrackWithUsersRow item) =>
      all.insert(index, item);
  void updateAllAtIndex(int index, Function(TrackWithUsersRow) updateFn) =>
      all[index] = updateFn(all[index]);

  List<TrackWithUsersRow> searchedTracks = [];
  void addToSearchedTracks(TrackWithUsersRow item) => searchedTracks.add(item);
  void removeFromSearchedTracks(TrackWithUsersRow item) =>
      searchedTracks.remove(item);
  void removeAtIndexFromSearchedTracks(int index) =>
      searchedTracks.removeAt(index);
  void insertAtIndexInSearchedTracks(int index, TrackWithUsersRow item) =>
      searchedTracks.insert(index, item);
  void updateSearchedTracksAtIndex(
          int index, Function(TrackWithUsersRow) updateFn) =>
      searchedTracks[index] = updateFn(searchedTracks[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool apiRequestCompleted = false;
  String? apiRequestLastUniqueKey;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleted;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
