import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ratingtrack_widget.dart' show RatingtrackWidget;
import 'package:flutter/material.dart';

class RatingtrackModel extends FlutterFlowModel<RatingtrackWidget> {
  ///  Local state fields for this component.

  bool? trackLiked;

  bool? audioLiked;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Query Rows] action in Ratingtrack widget.
  List<TrackFeedbackRow>? trackfeedback;
  // Stores action output result for [Backend Call - Query Rows] action in Ratingtrack widget.
  List<RecordingFeedbackRow>? recordingfeedback;
  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  // State field(s) for RatingBar widget.
  double? ratingBarValue2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
