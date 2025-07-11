import '/backend/schema/enums/enums.dart';
import '/components_library/checkbox/checkbox_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'select_dialog_item_model.dart';
export 'select_dialog_item_model.dart';

class SelectDialogItemWidget extends StatefulWidget {
  const SelectDialogItemWidget({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onChange,
  });

  final String? label;
  final bool? isSelected;
  final Future Function(bool value)? onChange;

  @override
  State<SelectDialogItemWidget> createState() => _SelectDialogItemWidgetState();
}

class _SelectDialogItemWidgetState extends State<SelectDialogItemWidget> {
  late SelectDialogItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDialogItemModel());
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
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.checkboxModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: CheckboxWidget(
                initValue: widget!.isSelected,
                label: valueOrDefault<String>(
                  widget!.label,
                  'label',
                ),
                disabled: false,
                type: CheckboxType.common,
                size: CheckboxSize.medium,
                onChange: (value) async {
                  await widget.onChange?.call(
                    value,
                  );
                },
              ),
            ),
          ].divide(SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
