import '/components_library/searchable_dropdown_dialog/searchable_dropdown_dialog_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'searchable_dropdown_model.dart';
export 'searchable_dropdown_model.dart';

class SearchableDropdownWidget extends StatefulWidget {
  const SearchableDropdownWidget({
    super.key,
    required this.options,
    required this.placeholder,
    this.initialValue,
  });

  /// The list of selectable items in the dropdown.
  final List<String>? options;

  /// Hint text shown when no option is selected.
  final String? placeholder;

  /// The default selected option when the component loads.
  final String? initialValue;

  @override
  State<SearchableDropdownWidget> createState() =>
      _SearchableDropdownWidgetState();
}

class _SearchableDropdownWidgetState extends State<SearchableDropdownWidget> {
  late SearchableDropdownModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchableDropdownModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (widget!.initialValue != null && widget!.initialValue != '') {
        _model.selectedOption = widget!.initialValue;
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
    return Builder(
      builder: (context) => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await showAlignedDialog(
            barrierColor: Colors.transparent,
            context: context,
            isGlobal: false,
            avoidOverflow: true,
            targetAnchor: AlignmentDirectional(0.0, 1.0)
                .resolve(Directionality.of(context)),
            followerAnchor: AlignmentDirectional(0.0, -1.0)
                .resolve(Directionality.of(context)),
            builder: (dialogContext) {
              return Material(
                color: Colors.transparent,
                child: SearchableDropdownDialogWidget(
                  options: widget!.options!,
                  selectedOption: _model.selectedOption,
                  onSelect: (item) async {
                    _model.selectedOption = item;
                    safeSetState(() {});
                  },
                ),
              );
            },
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).libBorder,
              width: 1.0,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    valueOrDefault<String>(
                      _model.selectedOption != null &&
                              _model.selectedOption != ''
                          ? _model.selectedOption
                          : widget!.placeholder,
                      'Placeholder',
                    ),
                    maxLines: 1,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).libTextDark,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).libPlaceholder,
                  size: 20.0,
                ),
              ].divide(SizedBox(width: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
