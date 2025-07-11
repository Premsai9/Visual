import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/permissions_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:record/record.dart';
import 'record_model.dart';
export 'record_model.dart';

class RecordWidget extends StatefulWidget {
  const RecordWidget({
    super.key,
    required this.trackid,
    this.id,
  });

  final String? trackid;
  final String? id;

  @override
  State<RecordWidget> createState() => _RecordWidgetState();
}

class _RecordWidgetState extends State<RecordWidget> {
  late RecordModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecordModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Builder(
          builder: (context) {
            if (_model.isrecording == false) {
              return Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 30.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).primary,
                  icon: Icon(
                    Icons.mic_sharp,
                    color: FlutterFlowTheme.of(context).info,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    await requestPermission(microphonePermission);
                    if (await getPermissionStatus(microphonePermission)) {
                      _model.isrecording = true;
                      safeSetState(() {});
                      await startAudioRecording(
                        context,
                        audioRecorder: _model.audioRecorder ??= AudioRecorder(),
                      );

                      _model.timerController.onStartTimer();
                    } else {
                      Navigator.pop(context);
                    }
                  },
                ),
              );
            } else {
              return Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 30.0,
                  buttonSize: 50.0,
                  fillColor: FlutterFlowTheme.of(context).error,
                  icon: Icon(
                    Icons.stop_circle,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    _model.isrecording = false;
                    safeSetState(() {});
                    _model.timerController.onStopTimer();
                    await stopAudioRecording(
                      audioRecorder: _model.audioRecorder,
                      audioName: 'recordedFileBytes',
                      onRecordingComplete: (audioFilePath, audioBytes) {
                        _model.recordingoutput = audioFilePath;
                        _model.recordedFileBytes = audioBytes;
                      },
                    );

                    {
                      safeSetState(
                          () => _model.isDataUploading_uploadDataN8a = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];
                      var selectedFiles = <SelectedFile>[];
                      var downloadUrls = <String>[];
                      try {
                        showUploadMessage(
                          context,
                          'Uploading file...',
                          showLoading: true,
                        );
                        selectedUploadedFiles =
                            _model.recordedFileBytes.bytes!.isNotEmpty
                                ? [_model.recordedFileBytes]
                                : <FFUploadedFile>[];
                        selectedFiles = selectedFilesFromUploadedFiles(
                          selectedUploadedFiles,
                          storageFolderPath: 'user_uploads',
                        );
                        downloadUrls = await uploadSupabaseStorageFiles(
                          bucketName: 'audiorecordings',
                          selectedFiles: selectedFiles,
                        );
                      } finally {
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        _model.isDataUploading_uploadDataN8a = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedFiles.length &&
                          downloadUrls.length == selectedFiles.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile_uploadDataN8a =
                              selectedUploadedFiles.first;
                          _model.uploadedFileUrl_uploadDataN8a =
                              downloadUrls.first;
                        });
                        showUploadMessage(
                          context,
                          'Success!',
                        );
                      } else {
                        safeSetState(() {});
                        showUploadMessage(
                          context,
                          'Failed to upload file',
                        );
                        return;
                      }
                    }

                    if (widget.id != null && widget.id != '') {
                      await RecordingsTable().update(
                        data: {
                          'file_url': _model.uploadedFileUrl_uploadDataN8a,
                          'source_type': 'recorded',
                          'created_at':
                              supaSerialize<DateTime>(getCurrentTimestamp),
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'id',
                          widget.id,
                        ),
                      );
                    } else {
                      await RecordingsTable().insert({
                        'track_id': widget.trackid,
                        'user_id': currentUserUid,
                        'file_url': _model.uploadedFileUrl_uploadDataN8a,
                        'source_type': 'recorded',
                        'is_public': false,
                        'created_at':
                            supaSerialize<DateTime>(getCurrentTimestamp),
                        'likes_count': 0,
                        'dislikes_count': 0,
                      });
                    }

                    Navigator.pop(context);

                    safeSetState(() {});
                  },
                ),
              );
            }
          },
        ),
        FlutterFlowTimer(
          initialTime: _model.timerInitialTimeMs,
          getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
            value,
            hours: false,
            milliSecond: false,
          ),
          controller: _model.timerController,
          updateStateInterval: Duration(milliseconds: 1000),
          onChanged: (value, displayTime, shouldUpdate) {
            _model.timerMilliseconds = value;
            _model.timerValue = displayTime;
            if (shouldUpdate) safeSetState(() {});
          },
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).headlineSmall.override(
                fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                color: FlutterFlowTheme.of(context).primary,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).headlineSmallIsCustom,
              ),
        ),
      ].divide(SizedBox(width: 15.0)),
    );
  }
}
