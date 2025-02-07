import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'reductiondrop_widget.dart' show ReductiondropWidget;
import 'package:flutter/material.dart';

class ReductiondropModel extends FlutterFlowModel<ReductiondropWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for d1 widget.
  FocusNode? d1FocusNode;
  TextEditingController? d1TextController;
  String? Function(BuildContext, String?)? d1TextControllerValidator;
  // State field(s) for unredd1 widget.
  bool? unredd1Value;
  FormFieldController<bool>? unredd1ValueController;
  // State field(s) for d2 widget.
  FocusNode? d2FocusNode;
  TextEditingController? d2TextController;
  String? Function(BuildContext, String?)? d2TextControllerValidator;
  // State field(s) for unredd2 widget.
  bool? unredd2Value;
  FormFieldController<bool>? unredd2ValueController;
  // State field(s) for v1r widget.
  FocusNode? v1rFocusNode;
  TextEditingController? v1rTextController;
  String? Function(BuildContext, String?)? v1rTextControllerValidator;
  // State field(s) for v1reddrp widget.
  bool? v1reddrpValue;
  FormFieldController<bool>? v1reddrpValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    d1FocusNode?.dispose();
    d1TextController?.dispose();

    d2FocusNode?.dispose();
    d2TextController?.dispose();

    v1rFocusNode?.dispose();
    v1rTextController?.dispose();
  }
}
