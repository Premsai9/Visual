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
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'a_i_page_model.dart';
export 'a_i_page_model.dart';

class AIPageWidget extends StatefulWidget {
  const AIPageWidget({super.key});

  static String routeName = 'AIPage';
  static String routePath = '/aIPage';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<AIPageWidget> createState() => _AIPageWidgetState();
}

class _AIPageWidgetState extends State<AIPageWidget> {
  late AIPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'packages/bento_design_system_mtd4px/assets/images/ai-bg.jpg',
              ).image,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 24.0, 16.0, 16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF81A5D6),
                            size: 24.0,
                          ),
                        ),
                        Text(
                          'AI Assistant',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .fontStyle,
                                    ),
                                    color: Color(0xFF81A5D6),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                    lineHeight: 1.4,
                                  ),
                        ),
                        Container(
                          width: 24.0,
                          height: 24.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: Color(0x3DFFFFFF),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    if (!(_model.content.isNotEmpty)) {
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 58.0, 24.0, 16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'packages/bento_design_system_mtd4px/assets/images/ai-mesh.png',
                                    width: 90.0,
                                    height: 90.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Hello there! What can I do ',
                                        style: TextStyle(),
                                      ),
                                      TextSpan(
                                        text: 'for you',
                                        style: TextStyle(
                                          color: Color(0xFF8AA3C2),
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' today?',
                                        style: TextStyle(),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .headlineLarge
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .headlineLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .headlineLarge
                                                  .fontStyle,
                                          lineHeight: 1.4,
                                        ),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Builder(
                              builder: (context) {
                                final promptItems = _model.prompts.toList();

                                return Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: List.generate(promptItems.length,
                                      (promptItemsIndex) {
                                    final promptItemsItem =
                                        promptItems[promptItemsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.insertAtIndexInContent(
                                            0,
                                            MessageStruct(
                                              content:
                                                  'Help me come up with a business name that combines health and wellness for my new app, thank you!',
                                              isMe: true,
                                            ));
                                        _model.isLoading = true;
                                        safeSetState(() {});
                                        safeSetState(() {
                                          _model.inputGroupModel.textController
                                              ?.clear();
                                        });
                                        await Future.delayed(
                                            const Duration(milliseconds: 3000));
                                        _model.insertAtIndexInContent(
                                            0,
                                            MessageStruct(
                                              content:
                                                  'Absolutely! Here are some name ideas that combine health, wellness, and a modern app-friendly vibe. I’ve grouped them by style to help you pick the tone you’re going for:🌿 Clean & - ModernWellnest (like wellness + nest) - VitaFlow - Mindara',
                                              isMe: false,
                                            ));
                                        _model.isLoading = false;
                                        safeSetState(() {});
                                      },
                                      child: wrapWithModel(
                                        model: _model.promptModels.getModel(
                                          promptItemsItem,
                                          promptItemsIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PromptWidget(
                                          key: Key(
                                            'Keyqj5_${promptItemsItem}',
                                          ),
                                          label: 'Recipe for',
                                          subLabel: 'best date night dinner',
                                          icon: Icon(
                                            Icons.spoke,
                                            color: FlutterFlowTheme.of(context)
                                                .libLabel,
                                            size: 8.0,
                                          ),
                                          type: PromptType.big,
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    } else {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Builder(
                                builder: (context) {
                                  final contentItems = _model.content.toList();

                                  return ListView.separated(
                                    padding: EdgeInsets.zero,
                                    reverse: true,
                                    primary: false,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: contentItems.length,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 32.0),
                                    itemBuilder: (context, contentItemsIndex) {
                                      final contentItemsItem =
                                          contentItems[contentItemsIndex];
                                      return wrapWithModel(
                                        model: _model.textBlobModels.getModel(
                                          (contentItemsItem.toMap()).toString(),
                                          contentItemsIndex,
                                        ),
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TextBlobWidget(
                                          key: Key(
                                            'Key21g_${(contentItemsItem.toMap()).toString()}',
                                          ),
                                          isReply: !contentItemsItem.isMe,
                                          message: contentItemsItem.content,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            if (_model.isLoading)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 16.0, 20.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.feedbackLoaderModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FeedbackLoaderWidget(
                                    label: 'Analyzing',
                                  ),
                                ),
                              ),
                          ]
                              .addToStart(SizedBox(height: 32.0))
                              .addToEnd(SizedBox(height: 16.0)),
                        ),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 32.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.iconButtonModel1,
                          updateCallback: () => safeSetState(() {}),
                          child: IconButtonWidget(
                            disabled: false,
                            icon: Icon(
                              Icons.camera_alt,
                              color: FlutterFlowTheme.of(context).libLabelLight,
                              size: 20.0,
                            ),
                            type: ButtonType.outline,
                            size: ButtonSize.medium,
                            isLoading: false,
                            onClick: () async {},
                          ),
                        ),
                        wrapWithModel(
                          model: _model.iconButtonModel2,
                          updateCallback: () => safeSetState(() {}),
                          child: IconButtonWidget(
                            disabled: false,
                            icon: Icon(
                              Icons.now_wallpaper,
                              color: FlutterFlowTheme.of(context).libLabelLight,
                              size: 20.0,
                            ),
                            type: ButtonType.outline,
                            size: ButtonSize.medium,
                            isLoading: false,
                            onClick: () async {},
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: wrapWithModel(
                              model: _model.inputGroupModel,
                              updateCallback: () => safeSetState(() {}),
                              child: InputGroupWidget(
                                placeholder: 'Ask something...',
                                showError: false,
                                disabled: false,
                                type: InputGroupType.input,
                                onSubmit: () async {
                                  _model.insertAtIndexInContent(
                                      0,
                                      MessageStruct(
                                        content:
                                            'Help me come up with a business name that combines health and wellness for my new app, thank you!',
                                        isMe: true,
                                      ));
                                  _model.isLoading = true;
                                  safeSetState(() {});
                                  safeSetState(() {
                                    _model.inputGroupModel.textController
                                        ?.clear();
                                  });
                                  await Future.delayed(
                                      const Duration(milliseconds: 3000));
                                  _model.insertAtIndexInContent(
                                      0,
                                      MessageStruct(
                                        content:
                                            'Absolutely! Here are some name ideas that combine health, wellness, and a modern app-friendly vibe. I’ve grouped them by style to help you pick the tone you’re going for:🌿 Clean & - ModernWellnest (like wellness + nest) - VitaFlow - Mindara',
                                        isMe: false,
                                      ));
                                  _model.isLoading = false;
                                  safeSetState(() {});
                                },
                                onChange: () async {},
                                onFocusChange: () async {},
                              ),
                            ),
                          ),
                        ),
                      ].divide(SizedBox(width: 6.0)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
