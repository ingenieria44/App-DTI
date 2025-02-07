import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'flow_converter_widget.dart' show FlowConverterWidget;
import 'package:flutter/material.dart';

class FlowConverterModel extends FlutterFlowModel<FlowConverterWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  double? dropDownValue1;
  FormFieldController<double>? dropDownValueController1;
  // State field(s) for DropDown widget.
  double? dropDownValue2;
  FormFieldController<double>? dropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
