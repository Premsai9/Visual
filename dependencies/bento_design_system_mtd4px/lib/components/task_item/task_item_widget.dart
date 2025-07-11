import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/components_library/chip/chip_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'task_item_model.dart';
export 'task_item_model.dart';

class TaskItemWidget extends StatefulWidget {
  const TaskItemWidget({
    super.key,
    required this.task,
    required this.onComplete,
  });

  final TaskStruct? task;
  final Future Function()? onComplete;

  @override
  State<TaskItemWidget> createState() => _TaskItemWidgetState();
}

class _TaskItemWidgetState extends State<TaskItemWidget> {
  late TaskItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TaskItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.checkboxModel,
                updateCallback: () => safeSetState(() {}),
                child: CheckboxWidget(
                  initValue: false,
                  disabled: false,
                  type: CheckboxType.common,
                  size: CheckboxSize.medium,
                  onChange: (value) async {
                    if (value) {
                      await widget.onComplete?.call();
                    }
                  },
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget!.task?.title,
                        'Research & Strategy ',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w500,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget!.task?.description,
                        'Define supported languages and locales',
                      ),
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).secondaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodySmall
                                .fontStyle,
                            lineHeight: 1.4,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final tags = widget!.task?.tags?.toList() ?? [];

                          return Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: List.generate(tags.length, (tagsIndex) {
                              final tagsItem = tags[tagsIndex];
                              return wrapWithModel(
                                model: _model.chipModels.getModel(
                                  tagsItem,
                                  tagsIndex,
                                ),
                                updateCallback: () => safeSetState(() {}),
                                child: ChipWidget(
                                  key: Key(
                                    'Key3eu_${tagsItem}',
                                  ),
                                  label: tagsItem,
                                  type: ChipType.dot,
                                  size: ChipSize.small,
                                  color: () {
                                    if (tagsItem == 'Research') {
                                      return Color(0xFF6367E7);
                                    } else if (tagsItem == 'Design') {
                                      return Color(0xFFE956A0);
                                    } else if (tagsItem == 'Testing') {
                                      return Color(0xFF49D520);
                                    } else if (tagsItem == 'Front-End') {
                                      return Color(0xFF161718);
                                    } else if (tagsItem == 'Develoment') {
                                      return Color(0xFF4A99F4);
                                    } else {
                                      return Color(0xFFF4AD33);
                                    }
                                  }(),
                                ),
                              );
                            }),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Due date: ${valueOrDefault<String>(
                  dateTimeFormat("MEd", widget!.task?.date),
                  'Jun 12',
                )}',
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.interTight(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).libLabelLight,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(width: 12.0)),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).libBorder,
          ),
        ].divide(SizedBox(height: 20.0)),
      ),
    );
  }
}
