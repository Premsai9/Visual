import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/recordcomponent_widget.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webviewx_plus/webviewx_plus.dart';
import 'action2_sheet_simple_model.dart';
export 'action2_sheet_simple_model.dart';

class Action2SheetSimpleWidget extends StatefulWidget {
  const Action2SheetSimpleWidget({
    super.key,
    required this.isselected,
    required this.trackid,
  });

  final String? isselected;
  final String? trackid;

  @override
  State<Action2SheetSimpleWidget> createState() =>
      _Action2SheetSimpleWidgetState();
}

class _Action2SheetSimpleWidgetState extends State<Action2SheetSimpleWidget> {
  late Action2SheetSimpleModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Action2SheetSimpleModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.isselected = widget.isselected;
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<RecordingsRow>>(
      future: RecordingsTable().querySingleRow(
        queryFn: (q) => q
            .eqOrNull(
              'track_id',
              widget.trackid,
            )
            .eqOrNull(
              'user_id',
              currentUserUid,
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitRipple(
                color: FlutterFlowTheme.of(context).primary,
                size: 50.0,
              ),
            ),
          );
        }
        List<RecordingsRow> bottomSheetEditRecordingsRowList = snapshot.data!;

        final bottomSheetEditRecordingsRow =
            bottomSheetEditRecordingsRowList.isNotEmpty
                ? bottomSheetEditRecordingsRowList.first
                : null;

        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
            boxShadow: [
              BoxShadow(
                blurRadius: 5.0,
                color: Color(0x3B1D2429),
                offset: Offset(
                  0.0,
                  -3.0,
                ),
              )
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    final selectedFiles = await selectFiles(
                      storageFolderPath: 'user_uploads',
                      multiFile: false,
                    );
                    if (selectedFiles != null) {
                      safeSetState(
                          () => _model.isDataUploading_localuploadnew = true);
                      var selectedUploadedFiles = <FFUploadedFile>[];

                      var downloadUrls = <String>[];
                      try {
                        selectedUploadedFiles = selectedFiles
                            .map((m) => FFUploadedFile(
                                  name: m.storagePath.split('/').last,
                                  bytes: m.bytes,
                                ))
                            .toList();

                        downloadUrls = await uploadSupabaseStorageFiles(
                          bucketName: 'audiorecordings',
                          selectedFiles: selectedFiles,
                        );
                      } finally {
                        _model.isDataUploading_localuploadnew = false;
                      }
                      if (selectedUploadedFiles.length ==
                              selectedFiles.length &&
                          downloadUrls.length == selectedFiles.length) {
                        safeSetState(() {
                          _model.uploadedLocalFile_localuploadnew =
                              selectedUploadedFiles.first;
                          _model.uploadedFileUrl_localuploadnew =
                              downloadUrls.first;
                        });
                      } else {
                        safeSetState(() {});
                        return;
                      }
                    }

                    if (widget.trackid ==
                        bottomSheetEditRecordingsRow?.trackId) {
                      await RecordingsTable().update(
                        data: {
                          'file_url': _model.uploadedFileUrl_localuploadnew,
                          'source_type': 'uploaded',
                          'created_at':
                              supaSerialize<DateTime>(getCurrentTimestamp),
                        },
                        matchingRows: (rows) => rows
                            .eqOrNull(
                              'track_id',
                              widget.trackid,
                            )
                            .eqOrNull(
                              'user_id',
                              currentUserUid,
                            ),
                      );
                    } else {
                      await RecordingsTable().insert({
                        'track_id': widget.trackid,
                        'user_id': currentUserUid,
                        'file_url': _model.uploadedFileUrl_localuploadnew,
                        'source_type': 'uploaded',
                        'is_public': true,
                        'created_at':
                            supaSerialize<DateTime>(getCurrentTimestamp),
                        'likes_count': 0,
                        'dislikes_count': 0,
                      });
                    }

                    safeSetState(() {});
                  },
                  text: 'Upload Audio',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFF1C1C1E),
                    textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyLargeFamily,
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        enableDrag: false,
                        context: context,
                        builder: (context) {
                          return WebViewAware(
                            child: Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: RecordcomponentWidget(
                                trackid: widget.trackid!,
                                recordingid: bottomSheetEditRecordingsRow?.id,
                              ),
                            ),
                          );
                        },
                      ).then((value) => safeSetState(() {}));
                    },
                    text: 'Record Audio',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFF1C1C1E),
                      textStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyLargeFamily,
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                            useGoogleFonts:
                                !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                          ),
                      elevation: 2.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
                if (valueOrDefault<bool>(
                  bottomSheetEditRecordingsRow?.fileUrl != null &&
                      bottomSheetEditRecordingsRow?.fileUrl != '',
                  false,
                ))
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowAudioPlayer(
                          audio: Audio.network(
                            bottomSheetEditRecordingsRow!.fileUrl!,
                            metas: Metas(
                              title: 'Audio',
                            ),
                          ),
                          titleTextStyle: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleLargeFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleLargeIsCustom,
                              ),
                          playbackDurationTextStyle:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .labelMediumFamily,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .labelMediumIsCustom,
                                  ),
                          fillColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          playbackButtonColor:
                              FlutterFlowTheme.of(context).success,
                          activeTrackColor:
                              FlutterFlowTheme.of(context).primary,
                          inactiveTrackColor:
                              FlutterFlowTheme.of(context).alternate,
                          elevation: 0.0,
                          playInBackground:
                              PlayInBackground.disabledRestoreOnForeground,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Public',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts:
                                            !FlutterFlowTheme.of(context)
                                                .bodyMediumIsCustom,
                                      ),
                                ),
                                Switch.adaptive(
                                  value: _model.switchValue ??=
                                      bottomSheetEditRecordingsRow.isPublic,
                                  onChanged: (newValue) async {
                                    safeSetState(
                                        () => _model.switchValue = newValue);
                                    if (newValue) {
                                      await RecordingsTable().update(
                                        data: {
                                          'is_public': true,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          bottomSheetEditRecordingsRow.id,
                                        ),
                                      );
                                    } else {
                                      await RecordingsTable().update(
                                        data: {
                                          'is_public': false,
                                        },
                                        matchingRows: (rows) => rows.eqOrNull(
                                          'id',
                                          bottomSheetEditRecordingsRow.id,
                                        ),
                                      );
                                    }
                                  },
                                  activeColor:
                                      FlutterFlowTheme.of(context).primary,
                                  activeTrackColor:
                                      FlutterFlowTheme.of(context).primary,
                                  inactiveTrackColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  inactiveThumbColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                ),
                              ].divide(SizedBox(width: 5.0)),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).success,
                              icon: Icon(
                                Icons.check,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              showLoadingIndicator: true,
                              onPressed: () async {
                                _model.isselected = 'self';
                                await RecordingsTable().update(
                                  data: {
                                    'isSelected': 'self',
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id',
                                    bottomSheetEditRecordingsRow.id,
                                  ),
                                );
                                Navigator.pop(context);
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context).error,
                              icon: Icon(
                                Icons.delete_rounded,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                await deleteSupabaseFileFromPublicUrl(
                                    _model.uploadedFileUrl_localuploadnew);
                                _model.isselected = _model.isselected == 'other'
                                    ? _model.isselected
                                    : 'track';
                                await RecordingsTable().update(
                                  data: {
                                    'file_url': '',
                                    'isSelected': _model.isselected,
                                  },
                                  matchingRows: (rows) => rows.eqOrNull(
                                    'id',
                                    bottomSheetEditRecordingsRow.id,
                                  ),
                                );

                                safeSetState(() {});
                              },
                            ),
                          ],
                        ),
                      ].divide(SizedBox(height: 10.0)),
                    ),
                  ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Cancel',
                    options: FFButtonOptions(
                      width: MediaQuery.sizeOf(context).width * 0.3,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primaryText,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                font: GoogleFonts.lexendDeca(
                                  fontWeight: FontWeight.normal,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).error,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 0.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
