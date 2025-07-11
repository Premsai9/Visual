import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components_library/feedback_loader/feedback_loader_widget.dart';
import '/components_library/icon_button/icon_button_widget.dart';
import '/components_library/input_group/input_group_widget.dart';
import '/components_library/prompt/prompt_widget.dart';
import '/components_library/text_blob/text_blob_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'a_i_page_widget.dart' show AIPageWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AIPageModel extends FlutterFlowModel<AIPageWidget> {
  ///  Local state fields for this page.

  List<MessageStruct> content = [];
  void addToContent(MessageStruct item) => content.add(item);
  void removeFromContent(MessageStruct item) => content.remove(item);
  void removeAtIndexFromContent(int index) => content.removeAt(index);
  void insertAtIndexInContent(int index, MessageStruct item) =>
      content.insert(index, item);
  void updateContentAtIndex(int index, Function(MessageStruct) updateFn) =>
      content[index] = updateFn(content[index]);

  bool isLoading = false;

  List<String> prompts = [
    'Hello World',
    'Hello World',
    'Hello World',
    'Hello World'
  ];
  void addToPrompts(String item) => prompts.add(item);
  void removeFromPrompts(String item) => prompts.remove(item);
  void removeAtIndexFromPrompts(int index) => prompts.removeAt(index);
  void insertAtIndexInPrompts(int index, String item) =>
      prompts.insert(index, item);
  void updatePromptsAtIndex(int index, Function(String) updateFn) =>
      prompts[index] = updateFn(prompts[index]);

  ///  State fields for stateful widgets in this page.

  // Models for Prompt dynamic component.
  late FlutterFlowDynamicModels<PromptModel> promptModels;
  // Models for TextBlob dynamic component.
  late FlutterFlowDynamicModels<TextBlobModel> textBlobModels;
  // Model for FeedbackLoader component.
  late FeedbackLoaderModel feedbackLoaderModel;
  // Model for IconButton component.
  late IconButtonModel iconButtonModel1;
  // Model for IconButton component.
  late IconButtonModel iconButtonModel2;
  // Model for InputGroup component.
  late InputGroupModel inputGroupModel;

  @override
  void initState(BuildContext context) {
    promptModels = FlutterFlowDynamicModels(() => PromptModel());
    textBlobModels = FlutterFlowDynamicModels(() => TextBlobModel());
    feedbackLoaderModel = createModel(context, () => FeedbackLoaderModel());
    iconButtonModel1 = createModel(context, () => IconButtonModel());
    iconButtonModel2 = createModel(context, () => IconButtonModel());
    inputGroupModel = createModel(context, () => InputGroupModel());
  }

  @override
  void dispose() {
    promptModels.dispose();
    textBlobModels.dispose();
    feedbackLoaderModel.dispose();
    iconButtonModel1.dispose();
    iconButtonModel2.dispose();
    inputGroupModel.dispose();
  }
}
