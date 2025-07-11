import '/backend/schema/enums/enums.dart';
import '/components_library/radio/radio_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'radio_group_model.dart';
export 'radio_group_model.dart';

class RadioGroupWidget extends StatefulWidget {
  const RadioGroupWidget({
    super.key,
    required this.groupType,
    required this.label,
    required this.options,
    required this.onChange,
  });

  /// Determines the layout direction of the radio buttons.
  final RadioGroupType? groupType;

  /// Text label displayed above the radio group.
  final String? label;

  /// The list of selectable items shown as radio buttons.
  final List<String>? options;

  /// Triggered when radio button is selected.
  ///
  /// Selected string is passed as a parameter in the callback.
  final Future Function(String selectedOptions)? onChange;

  @override
  State<RadioGroupWidget> createState() => _RadioGroupWidgetState();
}

class _RadioGroupWidgetState extends State<RadioGroupWidget> {
  late RadioGroupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RadioGroupModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          valueOrDefault<String>(
            widget!.label,
            'Radio Group',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.interTight(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).libLabelLight,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
        ),
        Builder(
          builder: (context) {
            if (widget!.groupType == RadioGroupType.vertical) {
              return Builder(
                builder: (context) {
                  final items = widget!.options!.toList();

                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: items.length,
                    separatorBuilder: (_, __) => SizedBox(height: 12.0),
                    itemBuilder: (context, itemsIndex) {
                      final itemsItem = items[itemsIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.selectedOptions = itemsItem;
                          safeSetState(() {});
                          await widget.onChange?.call(
                            itemsItem,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.radioModels1.getModel(
                            itemsItem,
                            itemsIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          child: RadioWidget(
                            key: Key(
                              'Keyvcc_${itemsItem}',
                            ),
                            isSelected: itemsItem == _model.selectedOptions,
                            label: itemsItem,
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            } else {
              return Builder(
                builder: (context) {
                  final horizontalItems = widget!.options!.toList();

                  return Wrap(
                    spacing: 32.0,
                    runSpacing: 16.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(horizontalItems.length,
                        (horizontalItemsIndex) {
                      final horizontalItemsItem =
                          horizontalItems[horizontalItemsIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.selectedOptions = horizontalItemsItem;
                          safeSetState(() {});
                          await widget.onChange?.call(
                            horizontalItemsItem,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.radioModels2.getModel(
                            horizontalItemsItem,
                            horizontalItemsIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          child: RadioWidget(
                            key: Key(
                              'Keyil8_${horizontalItemsItem}',
                            ),
                            isSelected:
                                horizontalItemsItem == _model.selectedOptions,
                            label: horizontalItemsItem,
                          ),
                        ),
                      );
                    }),
                  );
                },
              );
            }
          },
        ),
      ].divide(SizedBox(height: 16.0)),
    );
  }
}
