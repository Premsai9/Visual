import '/components/categorylist_widget.dart';
import '/components/categorylistbelowname_widget.dart';
import '/components/homepage_tracks_widget.dart';
import '/components/side_nav02_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  List<String> names = ['Sai'];
  void addToNames(String item) => names.add(item);
  void removeFromNames(String item) => names.remove(item);
  void removeAtIndexFromNames(int index) => names.removeAt(index);
  void insertAtIndexInNames(int index, String item) =>
      names.insert(index, item);
  void updateNamesAtIndex(int index, Function(String) updateFn) =>
      names[index] = updateFn(names[index]);

  ///  State fields for stateful widgets in this page.

  // Model for Categorylist component.
  late CategorylistModel categorylistModel1;
  // Model for Categorylist component.
  late CategorylistModel categorylistModel2;
  // Model for Categorylistbelowname component.
  late CategorylistbelownameModel categorylistbelownameModel;
  // Model for HomepageTracks component.
  late HomepageTracksModel homepageTracksModel;
  // Model for SideNav02 component.
  late SideNav02Model sideNav02Model;

  @override
  void initState(BuildContext context) {
    categorylistModel1 = createModel(context, () => CategorylistModel());
    categorylistModel2 = createModel(context, () => CategorylistModel());
    categorylistbelownameModel =
        createModel(context, () => CategorylistbelownameModel());
    homepageTracksModel = createModel(context, () => HomepageTracksModel());
    sideNav02Model = createModel(context, () => SideNav02Model());
  }

  @override
  void dispose() {
    categorylistModel1.dispose();
    categorylistModel2.dispose();
    categorylistbelownameModel.dispose();
    homepageTracksModel.dispose();
    sideNav02Model.dispose();
  }
}
