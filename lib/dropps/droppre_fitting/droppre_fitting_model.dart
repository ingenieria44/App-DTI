import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'droppre_fitting_widget.dart' show DroppreFittingWidget;
import 'package:flutter/material.dart';

class DroppreFittingModel extends FlutterFlowModel<DroppreFittingWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for droplinearflow widget.
  double? droplinearflowValue;
  FormFieldController<double>? droplinearflowValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for droplinearlenght widget.
  double? droplinearlenghtValue1;
  FormFieldController<double>? droplinearlenghtValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for droplinearlenght widget.
  double? droplinearlenghtValue2;
  FormFieldController<double>? droplinearlenghtValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for droplinearlenght widget.
  double? droplinearlenghtValue3;
  FormFieldController<double>? droplinearlenghtValueController3;
  // State field(s) for droplinearlenght widget.
  double? droplinearlenghtValue4;
  FormFieldController<double>? droplinearlenghtValueController4;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();
  }
}
