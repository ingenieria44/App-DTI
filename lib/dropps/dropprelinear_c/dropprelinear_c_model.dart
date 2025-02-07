import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dropprelinear_c_widget.dart' show DropprelinearCWidget;
import 'package:flutter/material.dart';

class DropprelinearCModel extends FlutterFlowModel<DropprelinearCWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for preslenght widget.
  FocusNode? preslenghtFocusNode;
  TextEditingController? preslenghtTextController;
  String? Function(BuildContext, String?)? preslenghtTextControllerValidator;
  // State field(s) for droplinearlenght widget.
  bool? droplinearlenghtValue;
  FormFieldController<bool>? droplinearlenghtValueController;
  // State field(s) for airflowdrop widget.
  FocusNode? airflowdropFocusNode;
  TextEditingController? airflowdropTextController;
  String? Function(BuildContext, String?)? airflowdropTextControllerValidator;
  // State field(s) for droplinearflow widget.
  bool? droplinearflowValue;
  FormFieldController<bool>? droplinearflowValueController;
  // State field(s) for velocidrop widget.
  FocusNode? velocidropFocusNode;
  TextEditingController? velocidropTextController;
  String? Function(BuildContext, String?)? velocidropTextControllerValidator;
  // State field(s) for vvv widget.
  bool? vvvValue;
  FormFieldController<bool>? vvvValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    preslenghtFocusNode?.dispose();
    preslenghtTextController?.dispose();

    airflowdropFocusNode?.dispose();
    airflowdropTextController?.dispose();

    velocidropFocusNode?.dispose();
    velocidropTextController?.dispose();
  }
}
