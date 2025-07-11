import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'ratingtrack_model.dart';
export 'ratingtrack_model.dart';

/// Create a component Design a clean, mobile‐first FlutterFlow component that
/// prompts users to share feedback on a playing track by first tapping a
/// prominent thumbs-up/thumbs-down toggle, then selecting a star‐rating (1–5
/// stars) for the track itself, followed by a second thumbs-up/thumbs-down
/// toggle to indicate whether they liked the accompanying audio recording and
/// another 1–5 star selector for rating the recording; ensure each
/// interactive element is clearly labeled, spaced with ample padding, uses
/// consistent iconography, and provides real-time visual confirmation (e.g.,
/// highlighted stars and toggled icons) so users can quickly and intuitively
/// submit both their like/dislike choices and numeric ratings in one seamless
/// form
class RatingtrackWidget extends StatefulWidget {
  const RatingtrackWidget({
    super.key,
    required this.trackrow,
    this.recordingrow,
  });

  final TracksRow? trackrow;
  final RecordingsRow? recordingrow;

  @override
  State<RatingtrackWidget> createState() => _RatingtrackWidgetState();
}

class _RatingtrackWidgetState extends State<RatingtrackWidget> {
  late RatingtrackModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RatingtrackModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.trackfeedback = await TrackFeedbackTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'track_id',
              widget.trackrow?.id,
            )
            .eqOrNull(
              'user_id',
              currentUserUid,
            ),
      );
      _model.recordingfeedback = await RecordingFeedbackTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'user_id',
              currentUserUid,
            )
            .eqOrNull(
              'recording_id',
              widget.recordingrow?.otherRecordingId,
            ),
      );
      _model.trackLiked = () {
        if ((_model.trackfeedback?.length.toString() != '0') &&
            (_model.trackfeedback?.firstOrNull?.liked == true)) {
          return true;
        } else if ((_model.trackfeedback?.length.toString() != '0') &&
            (_model.trackfeedback?.firstOrNull?.liked == false)) {
          return false;
        } else {
          return null;
        }
      }();
      _model.audioLiked = () {
        if ((_model.recordingfeedback?.length.toString() != '0') &&
            (_model.recordingfeedback?.firstOrNull?.liked == true)) {
          return true;
        } else if ((_model.recordingfeedback?.length.toString() != '0') &&
            (_model.recordingfeedback?.firstOrNull?.liked == false)) {
          return false;
        } else {
          return null;
        }
      }();
      safeSetState(() {});
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 20.0),
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 8.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
                spreadRadius: 0.0,
              )
            ],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Rate This Track',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineSmall.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .headlineSmallIsCustom,
                              ),
                    ),
                    Text(
                      'Help us improve by sharing your feedback',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            useGoogleFonts: !FlutterFlowTheme.of(context)
                                .bodyMediumIsCustom,
                          ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Did you like this track?',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Builder(
                              builder: (context) {
                                if (valueOrDefault<bool>(
                                  _model.trackLiked,
                                  false,
                                )) {
                                  return FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 60.0,
                                    fillColor: Color(0x4D249689),
                                    icon: Icon(
                                      Icons.thumb_up_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      size: 28.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  );
                                } else {
                                  return FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: 30.0,
                                    borderWidth: 2.0,
                                    buttonSize: 60.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    icon: Icon(
                                      Icons.thumb_up_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      _model.trackLiked = true;
                                      safeSetState(() {});
                                      if (_model.trackfeedback != null &&
                                          (_model.trackfeedback)!.isNotEmpty) {
                                        await TrackFeedbackTable().update(
                                          data: {
                                            'liked': true,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            _model
                                                .trackfeedback?.firstOrNull?.id,
                                          ),
                                        );
                                      } else {
                                        await TrackFeedbackTable().insert({
                                          'user_id': currentUserUid,
                                          'track_id': widget.trackrow?.id,
                                          'liked': true,
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'updated_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'rating': 3,
                                        });
                                      }
                                    },
                                  );
                                }
                              },
                            ),
                            Builder(
                              builder: (context) {
                                if (!valueOrDefault<bool>(
                                  _model.trackLiked,
                                  true,
                                )) {
                                  return FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 60.0,
                                    fillColor: Color(0x4DFF5963),
                                    icon: Icon(
                                      Icons.thumb_down_rounded,
                                      color: FlutterFlowTheme.of(context).error,
                                      size: 28.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  );
                                } else {
                                  return FlutterFlowIconButton(
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: 30.0,
                                    borderWidth: 2.0,
                                    buttonSize: 60.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    icon: Icon(
                                      Icons.thumb_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 28.0,
                                    ),
                                    onPressed: () async {
                                      _model.trackLiked = false;
                                      safeSetState(() {});
                                      if (_model.trackfeedback != null &&
                                          (_model.trackfeedback)!.isNotEmpty) {
                                        await TrackFeedbackTable().update(
                                          data: {
                                            'liked': false,
                                          },
                                          matchingRows: (rows) => rows.eqOrNull(
                                            'id',
                                            _model
                                                .trackfeedback?.firstOrNull?.id,
                                          ),
                                        );
                                      } else {
                                        await TrackFeedbackTable().insert({
                                          'user_id': currentUserUid,
                                          'track_id': widget.trackrow?.id,
                                          'liked': false,
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'updated_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'rating': 3,
                                        });
                                      }
                                    },
                                  );
                                }
                              },
                            ),
                          ].divide(SizedBox(width: 16.0)),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rate the track quality',
                          style: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleSmallFamily,
                                letterSpacing: 0.0,
                                useGoogleFonts: !FlutterFlowTheme.of(context)
                                    .titleSmallIsCustom,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            child: RatingBar.builder(
                              onRatingUpdate: (newValue) async {
                                safeSetState(
                                    () => _model.ratingBarValue1 = newValue);
                                if (_model.trackfeedback != null &&
                                    (_model.trackfeedback)!.isNotEmpty) {
                                  await TrackFeedbackTable().update(
                                    data: {
                                      'rating': _model.ratingBarValue1?.round(),
                                    },
                                    matchingRows: (rows) => rows.eqOrNull(
                                      'id',
                                      _model.trackfeedback?.firstOrNull?.id,
                                    ),
                                  );
                                } else {
                                  await TrackFeedbackTable().insert({
                                    'user_id': currentUserUid,
                                    'track_id': widget.trackrow?.id,
                                    'created_at': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'updated_at': supaSerialize<DateTime>(
                                        getCurrentTimestamp),
                                    'rating': _model.ratingBarValue1?.round(),
                                  });
                                }
                              },
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: FlutterFlowTheme.of(context).warning,
                              ),
                              direction: Axis.horizontal,
                              initialRating: _model.ratingBarValue1 ??=
                                  valueOrDefault<double>(
                                widget.trackrow?.averageRating,
                                0.0,
                              ),
                              unratedColor:
                                  FlutterFlowTheme.of(context).accent1,
                              itemCount: 5,
                              itemPadding: EdgeInsets.all(4.0),
                              itemSize: 30.0,
                              glowColor: FlutterFlowTheme.of(context).warning,
                            ),
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    if (valueOrDefault<bool>(
                      (widget.recordingrow != null) &&
                          valueOrDefault<bool>(
                            widget.recordingrow?.otherUrl != null &&
                                widget.recordingrow?.otherUrl != '',
                            false,
                          ),
                      false,
                    ))
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Did you like the audio recording?',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleSmallFamily,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .titleSmallIsCustom,
                                ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Builder(
                                builder: (context) {
                                  if (valueOrDefault<bool>(
                                    _model.audioLiked,
                                    false,
                                  )) {
                                    return FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 60.0,
                                      fillColor: Color(0x4D249689),
                                      icon: Icon(
                                        Icons.thumb_up_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        size: 28.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    );
                                  } else {
                                    return FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderRadius: 30.0,
                                      borderWidth: 2.0,
                                      buttonSize: 60.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.thumb_up_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 28.0,
                                      ),
                                      onPressed: () async {
                                        _model.audioLiked = true;
                                        safeSetState(() {});
                                        if (_model.recordingfeedback != null &&
                                            (_model.recordingfeedback)!
                                                .isNotEmpty) {
                                          await RecordingFeedbackTable().update(
                                            data: {
                                              'liked': true,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              _model.recordingfeedback
                                                  ?.firstOrNull?.id,
                                            ),
                                          );
                                        } else {
                                          await RecordingFeedbackTable()
                                              .insert({
                                            'user_id': currentUserUid,
                                            'recording_id': widget
                                                .recordingrow?.otherRecordingId,
                                            'liked': true,
                                          });
                                        }
                                      },
                                    );
                                  }
                                },
                              ),
                              Builder(
                                builder: (context) {
                                  if (!valueOrDefault<bool>(
                                    _model.audioLiked,
                                    true,
                                  )) {
                                    return FlutterFlowIconButton(
                                      borderColor: Colors.transparent,
                                      borderRadius: 30.0,
                                      borderWidth: 1.0,
                                      buttonSize: 60.0,
                                      fillColor: Color(0x4DFF5963),
                                      icon: Icon(
                                        Icons.thumb_down_rounded,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 28.0,
                                      ),
                                      onPressed: () {
                                        print('IconButton pressed ...');
                                      },
                                    );
                                  } else {
                                    return FlutterFlowIconButton(
                                      borderColor: FlutterFlowTheme.of(context)
                                          .alternate,
                                      borderRadius: 30.0,
                                      borderWidth: 2.0,
                                      buttonSize: 60.0,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      icon: Icon(
                                        Icons.thumb_down_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 28.0,
                                      ),
                                      onPressed: () async {
                                        _model.audioLiked = false;
                                        safeSetState(() {});
                                        if (_model.recordingfeedback != null &&
                                            (_model.recordingfeedback)!
                                                .isNotEmpty) {
                                          await RecordingFeedbackTable().update(
                                            data: {
                                              'liked': false,
                                            },
                                            matchingRows: (rows) =>
                                                rows.eqOrNull(
                                              'id',
                                              _model.recordingfeedback
                                                  ?.firstOrNull?.id,
                                            ),
                                          );
                                        } else {
                                          await RecordingFeedbackTable()
                                              .insert({
                                            'user_id': currentUserUid,
                                            'recording_id': widget
                                                .recordingrow?.otherRecordingId,
                                            'liked': false,
                                          });
                                        }
                                      },
                                    );
                                  }
                                },
                              ),
                            ].divide(SizedBox(width: 16.0)),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: RatingBar.builder(
                                onRatingUpdate: (newValue) async {
                                  safeSetState(
                                      () => _model.ratingBarValue2 = newValue);
                                  if (_model.recordingfeedback != null &&
                                      (_model.recordingfeedback)!.isNotEmpty) {
                                    await RecordingFeedbackTable().update(
                                      data: {
                                        'rating':
                                            _model.ratingBarValue2?.round(),
                                      },
                                      matchingRows: (rows) => rows.eqOrNull(
                                        'id',
                                        _model
                                            .recordingfeedback?.firstOrNull?.id,
                                      ),
                                    );
                                  } else {
                                    await RecordingFeedbackTable().insert({
                                      'user_id': currentUserUid,
                                      'recording_id': widget
                                          .recordingrow?.otherRecordingId,
                                      'rating': _model.ratingBarValue2?.round(),
                                    });
                                  }
                                },
                                itemBuilder: (context, index) => Icon(
                                  Icons.star_rounded,
                                  color: FlutterFlowTheme.of(context).warning,
                                ),
                                direction: Axis.horizontal,
                                initialRating: _model.ratingBarValue2 ??=
                                    valueOrDefault<double>(
                                  widget.recordingrow?.averageRating,
                                  0.0,
                                ),
                                unratedColor:
                                    FlutterFlowTheme.of(context).accent1,
                                itemCount: 5,
                                itemPadding: EdgeInsets.all(4.0),
                                itemSize: 30.0,
                                glowColor: FlutterFlowTheme.of(context).warning,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rate the recording quality',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleSmallFamily,
                                      letterSpacing: 0.0,
                                      useGoogleFonts:
                                          !FlutterFlowTheme.of(context)
                                              .titleSmallIsCustom,
                                    ),
                              ),
                            ].divide(SizedBox(height: 12.0)),
                          ),
                        ].divide(SizedBox(height: 12.0)),
                      ),
                  ].divide(SizedBox(height: 20.0)),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Submit Feedback',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 52.0,
                    padding: EdgeInsets.all(8.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context)
                        .titleMedium
                        .override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleMediumFamily,
                          color: FlutterFlowTheme.of(context).info,
                          letterSpacing: 0.0,
                          useGoogleFonts:
                              !FlutterFlowTheme.of(context).titleMediumIsCustom,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(26.0),
                  ),
                ),
              ].divide(SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
