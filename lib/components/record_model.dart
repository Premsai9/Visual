import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'record_widget.dart' show RecordWidget;
import 'package:flutter/material.dart';
import 'package:record/record.dart';

class RecordModel extends FlutterFlowModel<RecordWidget> {
  ///  Local state fields for this component.

  bool isrecording = false;

  ///  State fields for stateful widgets in this component.

  AudioRecorder? audioRecorder;
  String? recordingoutput;
  FFUploadedFile recordedFileBytes =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  bool isDataUploading_uploadDataN8a = false;
  FFUploadedFile uploadedLocalFile_uploadDataN8a =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataN8a = '';

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countUp));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
