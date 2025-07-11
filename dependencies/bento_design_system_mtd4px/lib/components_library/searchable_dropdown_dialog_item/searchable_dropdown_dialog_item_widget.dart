import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'searchable_dropdown_dialog_item_model.dart';
export 'searchable_dropdown_dialog_item_model.dart';

class SearchableDropdownDialogItemWidget extends StatefulWidget {
  const SearchableDropdownDialogItemWidget({
    super.key,
    required this.isSelected,
    required this.label,
  });

  final bool? isSelected;
  final String? label;

  @override
  State<SearchableDropdownDialogItemWidget> createState() =>
      _SearchableDropdownDialogItemWidgetState();
}

class _SearchableDropdownDialogItemWidgetState
    extends State<SearchableDropdownDialogItemWidget> {
  late SearchableDropdownDialogItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchableDropdownDialogItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: _model.mouseRegionHovered! || widget!.isSelected!
              ? FlutterFlowTheme.of(context).libHover
              : Color(0x00FFFFFF),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(14.0, 8.0, 16.0, 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (widget!.isSelected ?? true)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Icon(
                    Icons.check_rounded,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 18.0,
                  ),
                ),
              Expanded(
                child: Text(
                  valueOrDefault<String>(
                    widget!.label,
                    'Label',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.4,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
