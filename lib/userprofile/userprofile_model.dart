import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'userprofile_widget.dart' show UserprofileWidget;
import 'package:flutter/material.dart';

class UserprofileModel extends FlutterFlowModel<UserprofileWidget> {
  ///  Local state fields for this page.

  bool isFollowing = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in userprofile widget.
  List<FollowsRow>? amIFollowing;
  // Stores action output result for [Backend Call - Query Rows] action in userprofile widget.
  List<FollowsRow>? followerslist;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
