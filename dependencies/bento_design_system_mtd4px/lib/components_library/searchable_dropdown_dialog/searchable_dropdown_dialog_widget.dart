import '/components_library/dialog_list_empty_state/dialog_list_empty_state_widget.dart';
import '/components_library/searchable_dropdown_dialog_item/searchable_dropdown_dialog_item_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'searchable_dropdown_dialog_model.dart';
export 'searchable_dropdown_dialog_model.dart';

class SearchableDropdownDialogWidget extends StatefulWidget {
  const SearchableDropdownDialogWidget({
    super.key,
    required this.options,
    this.selectedOption,
    required this.onSelect,
  });

  final List<String>? options;
  final String? selectedOption;
  final Future Function(String item)? onSelect;

  @override
  State<SearchableDropdownDialogWidget> createState() =>
      _SearchableDropdownDialogWidgetState();
}

class _SearchableDropdownDialogWidgetState
    extends State<SearchableDropdownDialogWidget> {
  late SearchableDropdownDialogModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchableDropdownDialogModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 300.0,
        maxHeight: 220.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x06000000),
            offset: Offset(
              0.0,
              4.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).libBorder,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: _model.textController,
            focusNode: _model.textFieldFocusNode,
            onChanged: (_) => EasyDebounce.debounce(
              '_model.textController',
              Duration(milliseconds: 0),
              () => safeSetState(() {}),
            ),
            autofocus: false,
            obscureText: false,
            decoration: InputDecoration(
              isDense: true,
              hintText: 'Search',
              hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight:
                          FlutterFlowTheme.of(context).labelMedium.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    ),
                    color: FlutterFlowTheme.of(context).libPlaceholder,
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).labelMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).labelMedium.fontStyle,
                    lineHeight: 1.0,
                  ),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              contentPadding:
                  EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
            cursorColor: FlutterFlowTheme.of(context).primaryText,
            validator: _model.textControllerValidator.asValidator(context),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).libBorder,
          ),
          Flexible(
            child: Builder(
              builder: (context) {
                final options = widget!.options!
                    .where((e) => e
                        .toLowerCase()
                        .contains(_model.textController.text.toLowerCase()))
                    .toList();
                if (options.isEmpty) {
                  return DialogListEmptyStateWidget();
                }

                return ListView.builder(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    4.0,
                    0,
                    4.0,
                  ),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: options.length,
                  itemBuilder: (context, optionsIndex) {
                    final optionsItem = options[optionsIndex];
                    return Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await widget.onSelect?.call(
                            optionsItem,
                          );
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.searchableDropdownDialogItemModels
                              .getModel(
                            optionsIndex.toString(),
                            optionsIndex,
                          ),
                          updateCallback: () => safeSetState(() {}),
                          child: SearchableDropdownDialogItemWidget(
                            key: Key(
                              'Keyr9z_${optionsIndex.toString()}',
                            ),
                            isSelected: widget!.selectedOption == optionsItem,
                            label: optionsItem,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
