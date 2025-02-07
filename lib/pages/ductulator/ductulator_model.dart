import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ductulator_widget.dart' show DuctulatorWidget;
import 'package:flutter/material.dart';

class DuctulatorModel extends FlutterFlowModel<DuctulatorWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for CIRCULARFLOW widget.
  FocusNode? circularflowFocusNode;
  TextEditingController? circularflowTextController;
  String? Function(BuildContext, String?)? circularflowTextControllerValidator;
  // State field(s) for flowcoic widget.
  bool? flowcoicValue;
  FormFieldController<bool>? flowcoicValueController;
  // State field(s) for TEXTVELCIRC widget.
  FocusNode? textvelcircFocusNode;
  TextEditingController? textvelcircTextController;
  String? Function(BuildContext, String?)? textvelcircTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for diametercircular widget.
  bool? diametercircularValue;
  FormFieldController<bool>? diametercircularValueController;
  // State field(s) for aif widget.
  FocusNode? aifFocusNode;
  TextEditingController? aifTextController;
  String? Function(BuildContext, String?)? aifTextControllerValidator;
  // State field(s) for elipunt widget.
  bool? elipuntValue;
  FormFieldController<bool>? elipuntValueController;
  // State field(s) for hdelip widget.
  FocusNode? hdelipFocusNode;
  TextEditingController? hdelipTextController;
  String? Function(BuildContext, String?)? hdelipTextControllerValidator;
  // State field(s) for hvelipt widget.
  FocusNode? hveliptFocusNode;
  TextEditingController? hveliptTextController;
  String? Function(BuildContext, String?)? hveliptTextControllerValidator;
  // State field(s) for unitelipt widget.
  bool? uniteliptValue;
  FormFieldController<bool>? uniteliptValueController;
  // State field(s) for halfair widget.
  FocusNode? halfairFocusNode;
  TextEditingController? halfairTextController;
  String? Function(BuildContext, String?)? halfairTextControllerValidator;
  // State field(s) for halfairunit widget.
  bool? halfairunitValue;
  FormFieldController<bool>? halfairunitValueController;
  // State field(s) for halfvertical widget.
  FocusNode? halfverticalFocusNode;
  TextEditingController? halfverticalTextController;
  String? Function(BuildContext, String?)? halfverticalTextControllerValidator;
  // State field(s) for halflenghunit widget.
  bool? halflenghunitValue;
  FormFieldController<bool>? halflenghunitValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    circularflowFocusNode?.dispose();
    circularflowTextController?.dispose();

    textvelcircFocusNode?.dispose();
    textvelcircTextController?.dispose();

    aifFocusNode?.dispose();
    aifTextController?.dispose();

    hdelipFocusNode?.dispose();
    hdelipTextController?.dispose();

    hveliptFocusNode?.dispose();
    hveliptTextController?.dispose();

    halfairFocusNode?.dispose();
    halfairTextController?.dispose();

    halfverticalFocusNode?.dispose();
    halfverticalTextController?.dispose();
  }
}
