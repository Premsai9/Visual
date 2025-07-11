import '/backend/schema/enums/enums.dart';
import '/components/theme_item/theme_item_widget.dart';
import '/components_library/searchable_dropdown/searchable_dropdown_widget.dart';
import '/components_library/slider/slider_widget.dart';
import '/components_library/sw_itch/sw_itch_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter_animate/flutter_animate.dart';
import 'preferences_page_widget.dart' show PreferencesPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PreferencesPageModel extends FlutterFlowModel<PreferencesPageWidget> {
  ///  Local state fields for this page.

  List<String> languages = ['English', 'German', 'Italian', 'Spanish'];
  void addToLanguages(String item) => languages.add(item);
  void removeFromLanguages(String item) => languages.remove(item);
  void removeAtIndexFromLanguages(int index) => languages.removeAt(index);
  void insertAtIndexInLanguages(int index, String item) =>
      languages.insert(index, item);
  void updateLanguagesAtIndex(int index, Function(String) updateFn) =>
      languages[index] = updateFn(languages[index]);

  int selectedTheme = 0;

  List<Color> colors = [
    Color(4284704743),
    Color(4290047395),
    Color(4294553556),
    Color(4294361445),
    Color(4287480821),
    Color(4293260701),
    Color(4280955794)
  ];
  void addToColors(Color item) => colors.add(item);
  void removeFromColors(Color item) => colors.remove(item);
  void removeAtIndexFromColors(int index) => colors.removeAt(index);
  void insertAtIndexInColors(int index, Color item) =>
      colors.insert(index, item);
  void updateColorsAtIndex(int index, Function(Color) updateFn) =>
      colors[index] = updateFn(colors[index]);

  int selectedColor = 0;

  ///  State fields for stateful widgets in this page.

  // Model for SearchableDropdown component.
  late SearchableDropdownModel searchableDropdownModel;
  // Model for Theme_Item component.
  late ThemeItemModel themeItemModel1;
  // Model for Theme_Item component.
  late ThemeItemModel themeItemModel2;
  // Model for Theme_Item component.
  late ThemeItemModel themeItemModel3;
  // Model for Slider component.
  late SliderModel sliderModel;
  // Model for SwItch component.
  late SwItchModel swItchModel1;
  // Model for SwItch component.
  late SwItchModel swItchModel2;

  @override
  void initState(BuildContext context) {
    searchableDropdownModel =
        createModel(context, () => SearchableDropdownModel());
    themeItemModel1 = createModel(context, () => ThemeItemModel());
    themeItemModel2 = createModel(context, () => ThemeItemModel());
    themeItemModel3 = createModel(context, () => ThemeItemModel());
    sliderModel = createModel(context, () => SliderModel());
    swItchModel1 = createModel(context, () => SwItchModel());
    swItchModel2 = createModel(context, () => SwItchModel());
  }

  @override
  void dispose() {
    searchableDropdownModel.dispose();
    themeItemModel1.dispose();
    themeItemModel2.dispose();
    themeItemModel3.dispose();
    sliderModel.dispose();
    swItchModel1.dispose();
    swItchModel2.dispose();
  }
}
