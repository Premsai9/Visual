import '/components_library/select_dialog/select_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_model.dart';
export 'select_model.dart';

class SelectWidget extends StatefulWidget {
  const SelectWidget({
    super.key,
    this.label,
    required this.placeholder,
    required this.options,
    this.initValues,
  });

  /// Text label displayed above the dropdown.
  final String? label;

  /// Hint text shown when no option is selected.
  final String? placeholder;

  /// List of selectable items in the dropdown.
  final List<String>? options;

  /// Default selected option(s) when the component loads.
  final List<String>? initValues;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  late SelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.initValues != null && (widget!.initValues)!.isNotEmpty) {
        _model.selectedOptions = widget!.initValues!.toList().cast<String>();
        safeSetState(() {});
      }
    });
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget!.label != null && widget!.label != '')
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
              child: Text(
                valueOrDefault<String>(
                  widget!.label,
                  'Label',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      font: GoogleFonts.interTight(
                        fontWeight: FontWeight.w500,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).libLabel,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ),
          Builder(
            builder: (context) => InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                _model.isDropdownOpen = true;
                safeSetState(() {});
                await showAlignedDialog(
                  barrierColor: Colors.transparent,
                  context: context,
                  isGlobal: false,
                  avoidOverflow: true,
                  targetAnchor: AlignmentDirectional(-1.0, 1.0)
                      .resolve(Directionality.of(context)),
                  followerAnchor: AlignmentDirectional(-1.0, -1.0)
                      .resolve(Directionality.of(context)),
                  builder: (dialogContext) {
                    return Material(
                      color: Colors.transparent,
                      child: SelectDialogWidget(
                        options: widget!.options!,
                        selectedOptions: _model.selectedOptions,
                        onChangedSelection: (selectedItems) async {
                          _model.selectedOptions =
                              selectedItems!.toList().cast<String>();
                          safeSetState(() {});
                        },
                      ),
                    );
                  },
                );

                _model.isDropdownOpen = false;
                safeSetState(() {});
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: valueOrDefault<Color>(
                      _model.isDropdownOpen
                          ? FlutterFlowTheme.of(context).libBorderActive
                          : FlutterFlowTheme.of(context).libBorder,
                      FlutterFlowTheme.of(context).libBorder,
                    ),
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            _model.selectedOptions.isNotEmpty
                                ? ((List<String> var1) {
                                    return var1.join(', ');
                                  }(_model.selectedOptions.toList()))
                                : widget!.placeholder,
                            'Placeholder',
                          ),
                          maxLines: 1,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                color: _model.selectedOptions.isNotEmpty
                                    ? FlutterFlowTheme.of(context).primaryText
                                    : FlutterFlowTheme.of(context)
                                        .libPlaceholder,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                        ),
                      ),
                      Builder(
                        builder: (context) {
                          if (_model.isDropdownOpen) {
                            return Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color:
                                  FlutterFlowTheme.of(context).libPlaceholder,
                              size: 20.0,
                            );
                          } else {
                            return Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color:
                                  FlutterFlowTheme.of(context).libPlaceholder,
                              size: 20.0,
                            );
                          }
                        },
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
