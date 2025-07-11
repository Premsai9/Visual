import '/backend/schema/enums/enums.dart';
import '/components_library/alert/alert_widget.dart';
import '/components_library/button/button_widget.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/components_library/checkbox_group/checkbox_group_widget.dart';
import '/components_library/chip/chip_widget.dart';
import '/components_library/code_block/code_block_widget.dart';
import '/components_library/counter/counter_widget.dart';
import '/components_library/feedback_loader/feedback_loader_widget.dart';
import '/components_library/file_upload_dialog/file_upload_dialog_widget.dart';
import '/components_library/icon_button/icon_button_widget.dart';
import '/components_library/input_group/input_group_widget.dart';
import '/components_library/progressbar/progressbar_widget.dart';
import '/components_library/prompt/prompt_widget.dart';
import '/components_library/radio_group/radio_group_widget.dart';
import '/components_library/searchable_dropdown/searchable_dropdown_widget.dart';
import '/components_library/segmented_tabs/segmented_tabs_widget.dart';
import '/components_library/select/select_widget.dart';
import '/components_library/slider/slider_widget.dart';
import '/components_library/sw_itch/sw_itch_widget.dart';
import '/components_library/text_blob/text_blob_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'components_page_model.dart';
export 'components_page_model.dart';

class ComponentsPageWidget extends StatefulWidget {
  const ComponentsPageWidget({super.key});

  static String routeName = 'ComponentsPage';
  static String routePath = '/componentsPage';
  static void maybeSetRouteName(String? updatedRouteName) =>
      routeName = updatedRouteName ?? routeName;
  static void maybeSetRoutePath(String? updatedRoutePath) =>
      routePath = updatedRoutePath ?? routePath;

  @override
  State<ComponentsPageWidget> createState() => _ComponentsPageWidgetState();
}

class _ComponentsPageWidgetState extends State<ComponentsPageWidget> {
  late ComponentsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ComponentsPageModel());
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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.safePop();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          Text(
                            'Components',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  font: GoogleFonts.interTight(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleLarge
                                      .fontStyle,
                                ),
                          ),
                        ].divide(SizedBox(width: 8.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(16.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).libBorder,
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wrapWithModel(
                              model: _model.selectModel,
                              updateCallback: () => safeSetState(() {}),
                              child: SelectWidget(
                                label: 'Label',
                                placeholder: 'Placeholder',
                                options: _model.tempOptions,
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.sliderModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SliderWidget(
                                    size: SliderSize.small,
                                    min: 0.0,
                                    max: 10.0,
                                    initValue: 5.0,
                                    label: 'Small Slider',
                                    showValue: true,
                                    divisions: 10,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sliderModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SliderWidget(
                                    size: SliderSize.medium,
                                    min: 0.0,
                                    max: 100.0,
                                    initValue: 20.0,
                                    label: 'Medium Slider',
                                    showValue: false,
                                    divisions: 100,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.sliderModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SliderWidget(
                                    size: SliderSize.large,
                                    min: 0.0,
                                    max: 5.0,
                                    initValue: 3.5,
                                    label: 'Large Slider',
                                    showValue: true,
                                    divisions: 10,
                                    onChange: (value) async {},
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.checkboxModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.common,
                                    size: CheckboxSize.small,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.common,
                                    size: CheckboxSize.medium,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.common,
                                    size: CheckboxSize.large,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxDisabledModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: true,
                                    type: CheckboxType.common,
                                    size: CheckboxSize.medium,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.rounded,
                                    size: CheckboxSize.small,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.rounded,
                                    size: CheckboxSize.medium,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxModel6,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: false,
                                    type: CheckboxType.rounded,
                                    size: CheckboxSize.large,
                                    onChange: (value) async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxDisabledModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxWidget(
                                    initValue: false,
                                    label: 'Checkbox Label',
                                    disabled: true,
                                    type: CheckboxType.rounded,
                                    size: CheckboxSize.medium,
                                    onChange: (value) async {},
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.swItchModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: Icon(
                                          Icons.wb_sunny_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 12.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.cloud_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 12.0,
                                        ),
                                        size: SwitchSize.small,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.small,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.small,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.swItchModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: Icon(
                                          Icons.wb_sunny_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 14.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.cloud_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 14.0,
                                        ),
                                        size: SwitchSize.medium,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.medium,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.medium,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    wrapWithModel(
                                      model: _model.swItchModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: Icon(
                                          Icons.wb_sunny_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                        offIcon: Icon(
                                          Icons.cloud_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 16.0,
                                        ),
                                        size: SwitchSize.large,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.large,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.swItchModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: SwItchWidget(
                                        initValue: false,
                                        onIcon: null,
                                        offIcon: null,
                                        size: SwitchSize.large,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ].divide(SizedBox(width: 16.0)),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.alertModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AlertWidget(
                                    title: 'Common Alert',
                                    description:
                                        'For the best experience, please update your browser.',
                                    type: AlertType.common,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.alertModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AlertWidget(
                                    title: 'Success Alert',
                                    description:
                                        'For the best experience, please update your browser.',
                                    type: AlertType.warning,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.alertModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AlertWidget(
                                    title: 'Warning Alert',
                                    description:
                                        'For the best experience, please update your browser.',
                                    type: AlertType.success,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.alertModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: AlertWidget(
                                    title: 'Error Alert',
                                    description:
                                        'For the best experience, please update your browser.',
                                    type: AlertType.error,
                                  ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.searchableDropdownModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SearchableDropdownWidget(
                                    options: _model.tempOptions,
                                    placeholder: 'Select',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.buttonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.primary,
                                        size: ButtonSize.small,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.primary,
                                        size: ButtonSize.medium,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextLight,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.primary,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.leading,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextLight,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.primary,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.trailing,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: true,
                                        type: ButtonType.primary,
                                        size: ButtonSize.medium,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.iconButtonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonWidget(
                                        disabled: false,
                                        icon: Icon(
                                          Icons.menu_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextLight,
                                          size: 18.0,
                                        ),
                                        size: ButtonSize.medium,
                                        type: ButtonType.primary,
                                        isLoading: true,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.buttonModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.secondary,
                                        size: ButtonSize.small,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.secondary,
                                        size: ButtonSize.medium,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextDark,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.secondary,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.leading,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextDark,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.secondary,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.trailing,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: true,
                                        type: ButtonType.secondary,
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
                                          Icons.menu_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextDark,
                                          size: 18.0,
                                        ),
                                        size: ButtonSize.medium,
                                        type: ButtonType.secondary,
                                        isLoading: true,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.buttonModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.outline,
                                        size: ButtonSize.small,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        type: ButtonType.outline,
                                        size: ButtonSize.medium,
                                        isLoading: false,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel13,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.outline,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.leading,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel14,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: false,
                                        icon: Icon(
                                          Icons.check_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 18.0,
                                        ),
                                        type: ButtonType.outline,
                                        size: ButtonSize.medium,
                                        iconPosition: IconPosition.trailing,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.buttonModel15,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        label: 'Button',
                                        disabled: true,
                                        type: ButtonType.outline,
                                        size: ButtonSize.medium,
                                        isLoading: false,
                                        onClick: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.iconButtonModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: IconButtonWidget(
                                        disabled: false,
                                        icon: Icon(
                                          Icons.menu_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .libTextDark,
                                          size: 18.0,
                                        ),
                                        size: ButtonSize.medium,
                                        type: ButtonType.outline,
                                        isLoading: true,
                                        onClick: () async {
                                          await Future.delayed(const Duration(
                                              milliseconds: 3000));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.inputGroupModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InputGroupWidget(
                                    label: 'Label',
                                    placeholder: 'Placeholder',
                                    error: 'This is error message.',
                                    showError: true,
                                    disabled: false,
                                    type: InputGroupType.input,
                                    onSubmit: () async {},
                                    onChange: () async {},
                                    onFocusChange: () async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.inputGroupModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InputGroupWidget(
                                    label: 'Label',
                                    placeholder: 'Placeholder',
                                    error: 'This is error message.',
                                    showError: true,
                                    disabled: false,
                                    type: InputGroupType.textarea,
                                    onSubmit: () async {},
                                    onChange: () async {},
                                    onFocusChange: () async {},
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.inputGroupModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: InputGroupWidget(
                                    label: 'Label',
                                    placeholder: 'Placeholder',
                                    error: 'This is error message.',
                                    showError: true,
                                    disabled: true,
                                    type: InputGroupType.input,
                                    onSubmit: () async {},
                                    onChange: () async {},
                                    onFocusChange: () async {},
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.segmentedTabsModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SegmentedTabsWidget(
                                    tabs: _model.tempTabs,
                                    type: SegmentedTabsType.common,
                                    onChangeTab: (index) async {
                                      _model.activeTab = index;
                                      safeSetState(() {});
                                    },
                                    content: () => () {
                                      if (_model.activeTab == 0) {
                                        return AlertWidget(
                                          type: AlertType.warning,
                                          title: 'Animals',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else if (_model.activeTab == 1) {
                                        return AlertWidget(
                                          type: AlertType.error,
                                          title: 'Cars',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else {
                                        return AlertWidget(
                                          type: AlertType.success,
                                          title: 'Flowers',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      }
                                    }(),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.segmentedTabsModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SegmentedTabsWidget(
                                    tabs: _model.tempTabs,
                                    type: SegmentedTabsType.underline,
                                    onChangeTab: (index) async {
                                      _model.activeTab = index;
                                      safeSetState(() {});
                                    },
                                    content: () => () {
                                      if (_model.activeTab == 0) {
                                        return AlertWidget(
                                          type: AlertType.warning,
                                          title: 'Animals',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else if (_model.activeTab == 1) {
                                        return AlertWidget(
                                          type: AlertType.error,
                                          title: 'Cars',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else {
                                        return AlertWidget(
                                          type: AlertType.success,
                                          title: 'Flowers',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      }
                                    }(),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.segmentedTabsModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SegmentedTabsWidget(
                                    tabs: _model.tempTabs,
                                    type: SegmentedTabsType.outline,
                                    onChangeTab: (index) async {
                                      _model.activeTab = index;
                                      safeSetState(() {});
                                    },
                                    content: () => () {
                                      if (_model.activeTab == 0) {
                                        return AlertWidget(
                                          type: AlertType.warning,
                                          title: 'Animals',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else if (_model.activeTab == 1) {
                                        return AlertWidget(
                                          type: AlertType.error,
                                          title: 'Cars',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else {
                                        return AlertWidget(
                                          type: AlertType.success,
                                          title: 'Flowers',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      }
                                    }(),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.segmentedTabsModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: SegmentedTabsWidget(
                                    tabs: _model.tempTabs,
                                    type: SegmentedTabsType.simple,
                                    onChangeTab: (index) async {
                                      _model.activeTab = index;
                                      safeSetState(() {});
                                    },
                                    content: () => () {
                                      if (_model.activeTab == 0) {
                                        return AlertWidget(
                                          type: AlertType.warning,
                                          title: 'Animals',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else if (_model.activeTab == 1) {
                                        return AlertWidget(
                                          type: AlertType.error,
                                          title: 'Cars',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      } else {
                                        return AlertWidget(
                                          type: AlertType.success,
                                          title: 'Flowers',
                                          description:
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse porttitor id libero rutrum eleifend. In et libero vitae tellus sodales malesuada.',
                                        );
                                      }
                                    }(),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.chipModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.small,
                                        type: ChipType.solid,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.small,
                                        type: ChipType.faded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.small,
                                        type: ChipType.outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.small,
                                        type: ChipType.dot,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.chipModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.large,
                                        type: ChipType.solid,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.large,
                                        type: ChipType.faded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.large,
                                        type: ChipType.outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.chipModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ChipWidget(
                                        label: 'Chip',
                                        size: ChipSize.large,
                                        type: ChipType.dot,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.textBlobModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextBlobWidget(
                                    isReply: false,
                                    message: 'Hey bot!',
                                    time: '2 minutes ago',
                                    image: 'https://picsum.photos/seed/907/600',
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.textBlobModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: TextBlobWidget(
                                    isReply: true,
                                    message:
                                        'Hey! I am your support bot. What do you need help with?',
                                    time: 'Just now',
                                    image: 'https://picsum.photos/seed/907/600',
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.promptModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: PromptWidget(
                                    label: 'Recipe for',
                                    subLabel: 'best date night dinner',
                                    type: PromptType.big,
                                    icon: Icon(
                                      Icons.spoke,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 12.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.promptModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: PromptWidget(
                                    label: 'Check grammar for this paragraph',
                                    type: PromptType.small,
                                    icon: Icon(
                                      Icons.spoke,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 12.0,
                                    ),
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.promptModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: PromptWidget(
                                    label: 'Recipe for',
                                    type: PromptType.outline,
                                    icon: Icon(
                                      Icons.spoke,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 12.0,
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.feedbackLoaderModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FeedbackLoaderWidget(
                                    label: 'Analyzing',
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.counterModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.common,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.medium,
                                        type: CounterType.common,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.large,
                                        type: CounterType.common,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.common,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.counterModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.rounded,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.medium,
                                        type: CounterType.rounded,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.large,
                                        type: CounterType.rounded,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.rounded,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.counterModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.separated,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel10,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.medium,
                                        type: CounterType.separated,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel11,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.large,
                                        type: CounterType.separated,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel12,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.separated,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ],
                                ),
                                Wrap(
                                  spacing: 8.0,
                                  runSpacing: 8.0,
                                  alignment: WrapAlignment.start,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    wrapWithModel(
                                      model: _model.counterModel13,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.outlined,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel14,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.medium,
                                        type: CounterType.outlined,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel15,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.large,
                                        type: CounterType.outlined,
                                        disabled: false,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.counterModel16,
                                      updateCallback: () => safeSetState(() {}),
                                      child: CounterWidget(
                                        initValue: 1,
                                        size: CounterSize.small,
                                        type: CounterType.outlined,
                                        disabled: true,
                                        onChange: (value) async {},
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                wrapWithModel(
                                  model: _model.progressbarModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProgressbarWidget(
                                    label: 'Label',
                                    showValue: true,
                                    value: 0.5,
                                    size: ProgressbarSize.small,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.progressbarModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProgressbarWidget(
                                    label: 'Label',
                                    showValue: true,
                                    value: 0.3,
                                    size: ProgressbarSize.medium,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.progressbarModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: ProgressbarWidget(
                                    label: 'Label',
                                    showValue: true,
                                    value: 0.7,
                                    size: ProgressbarSize.large,
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.codeBlockModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CodeBlockWidget(
                                    label: 'import code from ff library',
                                    size: CodeBlockSize.small,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.codeBlockModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CodeBlockWidget(
                                    label: 'import code from ff library',
                                    size: CodeBlockSize.medium,
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.codeBlockModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CodeBlockWidget(
                                    label: 'import code from ff library',
                                    size: CodeBlockSize.large,
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Builder(
                                  builder: (context) => wrapWithModel(
                                    model: _model.buttonModel16,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ButtonWidget(
                                      label: 'File Upload',
                                      disabled: false,
                                      icon: Icon(
                                        Icons.upload_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .libTextLight,
                                        size: 24.0,
                                      ),
                                      type: ButtonType.primary,
                                      size: ButtonSize.medium,
                                      iconPosition: IconPosition.trailing,
                                      isLoading: true,
                                      onClick: () async {
                                        await showDialog(
                                          context: context,
                                          builder: (dialogContext) {
                                            return Dialog(
                                              elevation: 0,
                                              insetPadding: EdgeInsets.zero,
                                              backgroundColor:
                                                  Colors.transparent,
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
                                                              context)),
                                              child: GestureDetector(
                                                onTap: () {
                                                  FocusScope.of(dialogContext)
                                                      .unfocus();
                                                  FocusManager
                                                      .instance.primaryFocus
                                                      ?.unfocus();
                                                },
                                                child: FileUploadDialogWidget(
                                                  onSaveFiles: (files) async {
                                                    _model.activeTab = 0;
                                                    safeSetState(() {});
                                                  },
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.checkboxGroupModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxGroupWidget(
                                    label: 'Vertical Checkbox Group',
                                    groupType: CheckboxGroupType.vertical,
                                    checkboxType: CheckboxType.common,
                                    checkboxSize: CheckboxSize.medium,
                                    options: _model.tempOptions,
                                    onSelect: (selectedOptions) async {
                                      _model.activeTab = 0;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.checkboxGroupModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: CheckboxGroupWidget(
                                    label: 'Horizontal Checkbox Group',
                                    groupType: CheckboxGroupType.horizontal,
                                    checkboxType: CheckboxType.common,
                                    checkboxSize: CheckboxSize.medium,
                                    options: _model.tempOptions,
                                    onSelect: (selectedOptions) async {
                                      _model.activeTab = 0;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                wrapWithModel(
                                  model: _model.radioGroupModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RadioGroupWidget(
                                    label: 'Vertical Radio Group',
                                    groupType: RadioGroupType.vertical,
                                    options: _model.tempOptions,
                                    onChange: (selectedOptions) async {
                                      _model.activeTab = 0;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                                wrapWithModel(
                                  model: _model.radioGroupModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: RadioGroupWidget(
                                    label: 'Horizontal Radio Group',
                                    groupType: RadioGroupType.horizontal,
                                    options: _model.tempOptions,
                                    onChange: (selectedOptions) async {
                                      _model.activeTab = 0;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ].divide(SizedBox(height: 16.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).libBorder,
                            ),
                          ]
                              .divide(SizedBox(height: 32.0))
                              .addToStart(SizedBox(height: 16.0))
                              .addToEnd(SizedBox(height: 16.0)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]
                .addToStart(SizedBox(height: 32.0))
                .addToEnd(SizedBox(height: 32.0)),
          ),
        ),
      ),
    );
  }
}
