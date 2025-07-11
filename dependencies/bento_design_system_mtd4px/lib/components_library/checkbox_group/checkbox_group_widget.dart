import '/backend/schema/enums/enums.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'checkbox_group_model.dart';
export 'checkbox_group_model.dart';

class CheckboxGroupWidget extends StatefulWidget {
  const CheckboxGroupWidget({
    super.key,
    required this.groupType,
    required this.checkboxType,
    required this.checkboxSize,
    required this.label,
    required this.options,
    required this.onSelect,
  });

  /// Determines the layout direction of the checkboxes.
  final CheckboxGroupType? groupType;

  /// Sets the visual style of the checkboxes.
  final CheckboxType? checkboxType;

  /// Specifies the size of each checkbox.
  final CheckboxSize? checkboxSize;

  /// Text label displayed above the checkbox group.
  final String? label;

  /// The list of selectable items shown as checkboxes.
  final List<String>? options;

  /// Triggered when checkbox is selected/deselected.
  ///
  /// Selected strings are passed as a parameter in the callback.
  final Future Function(List<String> selectedOptions)? onSelect;

  @override
  State<CheckboxGroupWidget> createState() => _CheckboxGroupWidgetState();
}

class _CheckboxGroupWidgetState extends State<CheckboxGroupWidget> {
  late CheckboxGroupModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CheckboxGroupModel());
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
            'Checkbox Group',
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
            if (widget!.groupType == CheckboxGroupType.vertical) {
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
                      return wrapWithModel(
                        model: _model.checkboxModels1.getModel(
                          itemsItem,
                          itemsIndex,
                        ),
                        updateCallback: () => safeSetState(() {}),
                        child: CheckboxWidget(
                          key: Key(
                            'Keyivh_${itemsItem}',
                          ),
                          initValue: false,
                          label: itemsItem,
                          disabled: false,
                          type: widget!.checkboxType!,
                          size: widget!.checkboxSize!,
                          onChange: (value) async {
                            if (value) {
                              _model.addToSelectedOptions(itemsItem);
                              safeSetState(() {});
                            } else {
                              _model.removeFromSelectedOptions(itemsItem);
                              safeSetState(() {});
                            }

                            await widget.onSelect?.call(
                              _model.selectedOptions,
                            );
                          },
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
                      return wrapWithModel(
                        model: _model.checkboxModels2.getModel(
                          horizontalItemsItem,
                          horizontalItemsIndex,
                        ),
                        updateCallback: () => safeSetState(() {}),
                        child: CheckboxWidget(
                          key: Key(
                            'Keyhyt_${horizontalItemsItem}',
                          ),
                          initValue: false,
                          label: horizontalItemsItem,
                          disabled: false,
                          type: widget!.checkboxType!,
                          size: widget!.checkboxSize!,
                          onChange: (value) async {
                            if (value) {
                              _model.addToSelectedOptions(horizontalItemsItem);
                              safeSetState(() {});
                            } else {
                              _model.removeFromSelectedOptions(
                                  horizontalItemsItem);
                              safeSetState(() {});
                            }

                            await widget.onSelect?.call(
                              _model.selectedOptions,
                            );
                          },
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
