import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'velocityconv_widget.dart' show VelocityconvWidget;
import 'package:flutter/material.dart';

class VelocityconvModel extends FlutterFlowModel<VelocityconvWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for velintconv widget.
  FocusNode? velintconvFocusNode;
  TextEditingController? velintconvTextController;
  String? Function(BuildContext, String?)? velintconvTextControllerValidator;
  // State field(s) for drpvlcconv1 widget.
  double? drpvlcconv1Value;
  FormFieldController<double>? drpvlcconv1ValueController;
  // State field(s) for drpvlcconv2 widget.
  double? drpvlcconv2Value;
  FormFieldController<double>? drpvlcconv2ValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    velintconvFocusNode?.dispose();
    velintconvTextController?.dispose();
  }
}
