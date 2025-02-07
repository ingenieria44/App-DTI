import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'elbow_widget.dart' show ElbowWidget;
import 'package:flutter/material.dart';

class ElbowModel extends FlutterFlowModel<ElbowWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for droplinearlenght widget.
  bool? droplinearlenghtValue;
  FormFieldController<bool>? droplinearlenghtValueController;
  // State field(s) for valork widget.
  bool? valorkValue;
  FormFieldController<bool>? valorkValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
